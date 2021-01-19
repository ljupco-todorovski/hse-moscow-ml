# Exercises for tree and rule learning in R

# The aim of the exercise is to illustrate four important steps of learning predictive models
#  1. Cleaning/preprocessing the data
#  2. Estimating the model error
#  3. Model selection
#  4. Model inspection and interpretation

# Also, the exercise teaches how to learn models based on decision trees and rules

# First step: cleaning/preprocessing the data

# Wrong: data contains values "?" that indicate unknown values (NA in R)
titanic.data = read.table("titanic.csv", sep=",", header=T)

# Correct: specify the string for the unknown values
titanic.data = read.table("titanic.csv", sep=",", header=T, na.strings="?")

# Remove ID and text variables
titanic.data$x = NULL
titanic.data$name = NULL
titanic.data$ticket = NULL
titanic.data$cabin = NULL
titanic.data$home.dest = NULL

# Remove rows with unknown values
titanic.data = na.omit(titanic.data)

# Introduce factors
titanic.data$pclass = factor(titanic.data$pclass, levels=c(1, 2, 3), labels=c("1st", "2nd", "3rd"))
titanic.data$survived = factor(titanic.data$survived, levels=c(0, 1), labels=c("no", "yes"))

print(sprintf(
  "Data: %d examples, %d attributes, %d classes",
  nrow(titanic.data), ncol(titanic.data) - 1, length(levels(titanic.data$survived))
))

# Default accuracy and error
titanic.default.accuracy = max(table(titanic.data$survived)) / nrow(titanic.data)
titanic.default.error = 1 - titanic.default.accuracy

print(sprintf("Default accuracy: %.4g", titanic.default.accuracy))
print(sprintf("Default error: %.4g", titanic.default.error))


# For learning decision trees, we are going to use the CRAN package rpart
# For visualizing the decision trees, we are going to use the CRAN package rpart.plot
# If you do not have a package installed in R, use the command install.packages("package-name") to initiate the instalation and then follow the instructions

library(rpart)
library(rpart.plot)

# Naive run of the algorithm to learn a decision tree
titanic.model = rpart(survived ~ ., data=titanic.data)

# Plot (and inspect) the decision tree
par(mfrow=c(1,1))
rpart.plot(titanic.model)

# Calculating the error/accuracy of the decision tree
classification.error = function(true, predicted) {
  cm = table(true, predicted)
  accuracy = sum(diag(cm)) / sum(cm)
  error = 1 - accuracy
  return(error)
}
titanic.model.predictions = rpart.predict(titanic.model, type="class")
titanic.model.error.train = classification.error(titanic.data$survived, titanic.model.predictions)

print(sprintf("Model error on training data: %.4g", titanic.model.error.train))

# Note however, that this model error estimate is naive
# It does not reflect the generality of the model, but only its accuracy on training data

# Hence, the need for proper estimation of the model error


# Second step: Estimating the model error
# To this end, we are going to use cross-validation

# Cut the vector in npieces pieces and return the list of cuts
cut.in.pieces = function(x, npieces) {
  return(split(x, cut(seq_along(x), npieces, labels = FALSE)))
}

# Return the indexes of examples in individual folds
cross.validation.folds = function(n, k, stratification=NULL, seed=NULL) {
  if (!is.null(seed)) {
    set.seed(seed)
  }
  if (is.null(stratification)) {
    cut.in.pieces(sample(1:n), k)
  } else {
    folds = NULL
    for (l in levels(as.factor(stratification))) {
      if (is.null(folds)) {
        folds = cut.in.pieces(sample(which(stratification == l)), k)
      } else {
        folds.l = cut.in.pieces(sample(which(stratification == l)), k)
        for (i in 1:k) {
          folds[[i]] = c(folds[[i]], folds.l[[i]])
        }
      }
    }
  }
  return(folds)
}

# Perform cross-validation
# For each fold, learn a model from training data including all other folds
# Use the model to predict the target variable on the current fold
# Collect all the predictions and calculate the error
titanic.cv = function(folds) {
  cv.predictions = titanic.data$survived
  for (i in 1:5) {
    m.i = rpart(survived ~ ., data=titanic.data[-folds[[i]], ])
    cv.predictions[folds[[i]]] = rpart.predict(m.i, titanic.data[folds[[i]], ], type="class")
  }
  cv.error = classification.error(titanic.data$survived, cv.predictions)
  return(cv.error)
}

cv.folds = cross.validation.folds(nrow(titanic.data), 5, stratification=titanic.data$survived, seed=42)
titanic.model.error.cv = titanic.cv(cv.folds)

print(sprintf("Model error estimated using CV: %.4g", titanic.model.error.cv))


# Third step: Model selection

# Here, we try different parameter settings of the learning algorithm rpart
# We set the values of the two parameters that control the tree pruning process
# The first is pre-pruning parameter minsplit (check ?rpart.control for explanation)
# The second is the post-prunning parameter cp (check ?rpart.control for explanation)

minsplit.values = c(2, 5, 10, 20, 50)
cp.values = c(0, 0.01, 0.1, 0.2, 0.5, 1)

titanic.cv = function(folds, minsplit, cp) {
  cv.predictions = titanic.data$survived
  for (i in 1:5) {
    m.i = rpart(survived ~ ., data=titanic.data[-cv.folds[[i]], ],
                control=rpart.control(minsplit=minsplit, cp=cp)
    )
    cv.predictions[cv.folds[[i]]] = rpart.predict(m.i, titanic.data[cv.folds[[i]], ], type="class")
  }
  cv.error = classification.error(titanic.data$survived, cv.predictions)
  return(cv.error)
}

# Calculate the cross-validated errors of all the decision trees trained with different parameter settings
errors = matrix(0, nrow=length(minsplit.values), ncol=length(cp.values))
for (i in 1:length(minsplit.values)) {
  for (j in 1:length(cp.values)) {
    errors[i, j] = titanic.cv(cv.folds, minsplit.values[i], cp.values[j])
  }
}

# Find the minimal error and identify the parameter setting that led to that error
min.error = min(errors)
i.j = which(errors == min.error, arr.ind=TRUE)
min.minsplit = minsplit.values[i.j[1]]
min.cp = cp.values[i.j[2]]

print(sprintf("Optimal setting: minsplit = %d, cp = %g", min.minsplit, min.cp))
print(sprintf("Optimal error: %.4g", min.error))


# Plot the results of model selection
# FIrst in 2-D considering both parameters simultaneously
par(mar=c(5.1, 4.1, 4.1, 4.1))
plot(errors, axis.row=list(yaxt="n"), axis.col=list(xaxt="n"),
     xlab="cp", ylab="minsplit", main="titanic: Model Selection (minsplit and cp)",
     border=NA, digits=4, text.cell=list(cex=0.5), col=heat.colors
)
axis(1, at=1:length(cp.values), labels=cp.values)
axis(2, at=length(minsplit.values):1, labels=minsplit.values)

# Then in 1-D considereing each parameter separately
plot(errors[, i.j[2]], type="b", col="red",
     xaxt="n", xlab="minsplit", ylab="error (CV)",
     main=sprintf("titanic: Model Selection (minsplit, cp=%g)", min.cp)
)
axis(1, at=1:length(minsplit.values), labels=minsplit.values)

plot(errors[i.j[1], ], type="b", col="red",
     xaxt="n", xlab="cp", ylab="error (CV)",
     main=sprintf("titanic: Model Selection (cp, minsplit=%d)", min.minsplit)
)
axis(1, at=1:length(cp.values), labels=cp.values)


# Use the identified parameter setting to learn the final model
titanic.model = rpart(survived ~ ., data=titanic.data,
                      control=rpart.control(minsplit=min.minsplit, cp=min.cp)
)
rpart.plot(titanic.model, main="titanic: the Model")


# Fourth step: Model inspection and interpretation

# The tabular representation of the titanic model can be found in titanic$frame
# Each row correspond to a single tree node
# The first table column (var) denotes the type of the node (leaf or internal)

# Model complexity: number of nodes and leafs
dt.complexity = function(dt) {
  n.leafs = sum(dt$frame$var == "<leaf>")
  n.nodes = nrow(dt$frame)
  return(list(nodes=n.nodes, leafs=n.leafs))
}


dt.c = dt.complexity(titanic.model)
print(sprintf("Number of nodes: %d, leaf nodes %d", dt.c$nodes, dt.c$leafs))

# Class distributions in individual leaf nodes
dt.leaf.plot = function(dt, y, leaf.index, leaf.description) {
  leaf.examples = which(dt$where == leaf.index)
  leaf.cd = table(y[leaf.examples])
  leaf.cd.pct = round(leaf.cd / sum(leaf.cd) * 100)
  leaf.labels = sprintf("%s-%d%%", names(leaf.cd), leaf.cd.pct)

  all.cd = table(y)
  all.cd.pct = round(all.cd / sum(all.cd) * 100)
  all.labels = sprintf("%s-%d%%", names(all.cd), all.cd.pct)

  par(mar=c(0.1, 1.5, 4.1, 1.5))
  par(mfrow=c(1,2))
  pie(all.cd, labels=all.labels, main=sprintf("titanic: all, n=%d", length(y)))
  pie(leaf.cd, labels=leaf.labels,
      main=sprintf("titanic: %s\nn=%d", leaf.description, length(leaf.examples))
  )
  par(mfrow=c(1,1))
}

# Plot the distributions for the two largest leafs in the model
dt.leaf.plot(titanic.model, titanic.data$survived, 3, "sex=male,\nage >= 9.5")
dt.leaf.plot(titanic.model, titanic.data$survived, 15, "sex=female,\nclass != 3rd")


# For learning decision rules, we are going to use the CRAN package Rweka
# It allows for using all the algorithms from the Weka workbench for machine learning
# Among them is the algorithm for learning decicion rules RIPPER

library(RWeka)

titanic.cv = function(folds) {
  cv.predictions = titanic.data$survived
  for (i in 1:5) {
    m.i = JRip(survived ~ ., data=titanic.data[-folds[[i]], ])
    cv.predictions[folds[[i]]] = predict(m.i, titanic.data[folds[[i]], ], type="class")
  }
  cv.error = classification.error(titanic.data$survived, cv.predictions)
  return(cv.error)
}


# Model selection

minweights.values = c(1, 2, 5, 10, 20, 50)
prunning.values = c(TRUE, FALSE)

titanic.cv = function(folds, minweights, prunning) {
  cv.predictions = titanic.data$survived
  for (i in 1:5) {
    m.i = JRip(survived ~ ., data=titanic.data[-cv.folds[[i]], ],
                control=Weka_control(N=minweights, P=prunning)
    )
    cv.predictions[cv.folds[[i]]] = predict(m.i, titanic.data[cv.folds[[i]], ], type="class")
  }
  cv.error = classification.error(titanic.data$survived, cv.predictions)
  return(cv.error)
}

# Calculate the cross-validated errors of all the decision trees trained with different parameter settings
errors = matrix(0, nrow=length(minweights.values), ncol=length(prunning.values))
for (i in 1:length(minweights.values)) {
  for (j in 1:length(prunning.values)) {
    errors[i, j] = titanic.cv(cv.folds, minweights.values[i], prunning.values[j])
  }
}

# Find the minimal error and identify the parameter setting that led to that error
min.error = min(errors)
i.j = which(errors == min.error, arr.ind=TRUE)
min.minweights = minweights.values[i.j[1]]
min.prunning = prunning.values[i.j[2]]

# Plot the results of model selection
# FIrst in 2-D considering both parameters simultaneously
par(mar=c(5.1, 4.1, 4.1, 4.1))
plot(errors, axis.row=list(yaxt="n"), axis.col=list(xaxt="n"),
     xlab="prunning", ylab="minweights", main="titanic: Model Selection (minweigths and prunning)",
     border=NA, digits=4, text.cell=list(cex=0.5), col=heat.colors
)
#axis(1, at=1:length(prunning.values), labels=prunning.values)
axis(1, at=1:length(prunning.values), labels=c("TRUE", "FALSE"))
axis(2, at=length(minweights.values):1, labels=minweights.values)

# Then in 1-D considering each parameter separately
plot(errors[, i.j[2]], type="b", col="red",
     xaxt="n", xlab="minweigths", ylab="error (CV)",
     main=sprintf("titanic: Model Selection (minweigths, prunning=%s)", min.prunning)
)
axis(1, at=1:length(minweights.values), labels=minweights.values)

plot(errors[i.j[1], ], type="b", col="red",
     xaxt="n", xlab="cp", ylab="error (CV)",
     main=sprintf("titanic: Model Selection (prunning, minweights=%d)", min.minweights)
)
#axis(1, at=1:length(prunning.values), labels=prunning.values)
axis(1, at=1:length(prunning.values), labels=c("TRUE", "FALSE"))

print(sprintf("Optimal setting: minweigths = %d, prunning = %s", min.minweights, min.prunning))
print(sprintf("Optimal error: %.4g", min.error))


# Use the identified parameter setting to learn the final model
titanic.model = JRip(survived ~ ., data=titanic.data,
                      control=Weka_control(N=min.minweights, P=min.prunning)
)
print(titanic.model)


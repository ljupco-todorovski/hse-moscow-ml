# Machine Learning @ Applied Statistics with Network Analysis, HSE, Moscow

This repository includes teaching materials related to the elective course Machine Learning taught at the [HSE-Moscow](https://www.hse.ru/en/) masters programme [Applied Statistics with Network Analysis](https://www.hse.ru/en/ma/sna/). The materials are organized in sections corresponding to lecture days. Each section provides a brief outline of the topics addressed, access to the lecture slides, outline of the practical exercises and seminars, and references to the relevant literature.

For further information on the course, students can contact the lecturers via email at [Nada Lavrač](mailto:nada.lavrac@ijs.si), `nada.lavrac@ijs.si` and [Ljupco Todorovski](mailto:ljupco.todorovski@fu.uni-lj.si), `ljupco.todorovski@fu.uni-lj.si`.


## Tentative Course Schedule for the Academic Year 2020/21

You can follow the lectures using the following [Zoom link](https://fmf-uni-lj-si.zoom.us/j/97756216461), `https://fmf-uni-lj-si.zoom.us/j/97756216461` or join the Zoom meeting using the ID `977 562 16461`.

| Date                            | Topic/Section                                         |
|---------------------------------|-------------------------------------------------------|
| Thursday, 14th of January 2021  | [Introduction to Machine Learning](#1-introduction-to-machine-learning) |
| Tuesday, 19th of January 2021   | [Learning Rules](#2-leatning-rules) |
| Thursday, 21st of January 2021  | [Relational Learning](#3-relational-learning) |
| Tuesday, 26th of January 2021   | Learning from Heterogeneous Data |
| Thursday, 28th of January 2021  | Learning Ensembles |
| Tuesday, 2nd of February 2021   | Support Vectors Machines and Kernels |
| Thursday, 4th of February 2021  | Artificial Neural Networks and Deep Learning |
| Tuesday, 9th of February 2021   | Complex Data Types and Embeddings |
| Thursday, 11th of February 2021 | Dimensionality Reduction with Autoencoders |
| Tuesday, 16th of February 2021  | TBA |


## 1: Introduction to Machine Learning
* Basic definitions and taxonomy of learning tasks
* Three generations of machine learning and data mining methods
* Understanding the error of machine learning models
* The curse of dimensionality
* Rough overview of the course topics

### Lecture Slides
[First part, Nada Lavrač](http://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-01-Introduction-NL.pdf)<BR/>
[Second part, Ljupčo Todorovski](http://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-01-Introduction-LT.pdf)<BR/>
Last update: 15th of January 2021, 9:10 CET

### Literature
* James G, Witten D, Hastie T and Tibshirani R (2013) An Introduction to Statistical Learning. Springer, New York. Available at [https://statlearning.com/](https://statlearning.com/). Sections 1 and 2, check also the exercises at the end of Section 2.

* Bramer M (2007) Principles of Data Mining. Springer, Berlin. [DOI:10.1007/978-1-84628-766-4](https://doi.org/10.1007/978-1-84628-766-4). An introductory textbook for refreshing your knowledge on basics of data mining. The first edition of the textbook is also available at [ResearchGate](https://www.researchgate.net/publication/220688376_Principles_of_Data_Mining), `https://www.researchgate.net/publication/220688376_Principles_of_Data_Mining`


## 2: Learning Rules
* Learning rules from decision trees
* Covering algorithm and its variants
* Association rules and subgroup discovery
* Evaluating rules and rule sets

### Lecture Slides
[Learning rules](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-02-Rule-Learning-NL.pdf)<BR/>
Last update: 20th of January 2021, 15:00 CET

### Exercise Materials
[Learning decision trees and rules in R](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/02/HSE-02-Learning-Rules-LT.nb.html)<BR/>
Last update: 20th of January 2021, 09:00 CET

### Literature
* Fürnkranz J, Gamberger D and Lavrač N (2012) Foundations of Rule Learning. Springer, Berlin. [DOI:10.1007/978-3-540-75197-7](https://doi.org/10.1007/978-3-540-75197-7). Chapters 1 and 2, available [here](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/readings/fur-etal-12-foundations-of-rule-learning-chapters-1-2.pdf).


## 3: Relational Learning
* Learning relational rules
* Inductive logic programming
* Propositionalization
* Wordification and Python-RDM

### Lecture Slides
[Relational learning](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-03-Relational-Learning-NL.pdf)<BR/>
Last update: 21st of January 2021, 12:50 CET

### Exercise Materials
[Relational learning in Python](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/03/HSE-03-Relational-Learning-LT.zip)<BR/>
Last update: 21st of January 2021, 18:00 CET

### Literature
* Džeroski S, Lavrač N (2001) Relational Data Mining. Springer, Berlin. [DOI:10.1007/978-3-662-04599-2](https://doi.org/10.1007/978-3-662-04599-2). Chapter 1, available [here](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/readings/dze-lav-01-intro-to-ilp.pdf).


## 4: Learning from Heterogeneous Data
* Propositionalization of heterogeneous information networks
* Learning from taxonomies and ontologies
* Semantic learning with HINMINE


## 5: Learning Ensembles
* Why ensembles: bias and variance decomposition of the predictive error
* Boosting, Bagging, Feature subspaces, Random forests
* Out of bag error estimate, feature importance
* Random forests in R


## 6: Support Vectors Machines and Kernels
* Linear support vector machine
* Non-linearity and kernel functions
* Selecting kernels, setting hyper-parameters
* Support vector machines and kernels in R

### Lecture Slides

### Exercise Materials

### Literature
* James G, Witten D, Hastie T and Tibshirani R (2013) An Introduction to Statistical Learning. Springer, New York. Available at [https://statlearning.com/](https://statlearning.com/). Section 9, check also exercises 1-8 in the same section.


## 7: Artificial Neural Networks and Deep Learning
* General intro to ANNs
* Feed-forward networks and back propagation
* Towards deep networks: Convolutional networks
* ANNs in R


## 8: Complex Data Types and Embeddings
* Embeddings for text data, word2vec and doc2vec
* Embeddings for network data, node2vec
* Embeddings in R


## 9: Dimensionality Reduction with Autoencoders
* Autoencoders as general embedding approach
* Taxonomy of autoencoders: regularization and denoising
* Autoencoders in R

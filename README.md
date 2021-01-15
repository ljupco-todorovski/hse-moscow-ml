# Machine Learning @ Applied Statistics with Network Analysis, HSE, Moscow

This repository includes teaching materials related to the elective course Machine Learning taught at the [HSE-Moscow](https://www.hse.ru/en/) masters programme [Applied Statistics with Network Analysis](https://www.hse.ru/en/ma/sna/). The materials are organized in sections corresponding to lecture days. Each section provides a brief outline of the topics addressed, access to the lecture slides, outline of the practical exercises and seminars, and references to the relevant literature.

For further information on the course, students can contact the lecturers via email at [Nada Lavrač](mailto:nada.lavrac@ijs.si), `nada.lavrac@ijs.si` and [Ljupco Todorovski](mailto:ljupco.todorovski@fu.uni-lj.si), `ljupco.todorovski@fu.uni-lj.si`.


## Tentative Course Schedule for the Academic Year 2020/21

You can follow the lectures using the following [Zoom link](https://fmf-uni-lj-si.zoom.us/j/97756216461), `https://fmf-uni-lj-si.zoom.us/j/97756216461` or join the Zoom meeting using the ID `977 562 16461`.

| Date                            | Topic/Section                                         |
|---------------------------------|-------------------------------------------------------|
| Thursday, 14th of January 2021  | [Introduction to Machine Learning](#1-introduction-to-machine-learning) |
| Tuesday, 19th of January 2021   | Learning Rules |
| Thursday, 21st of January 2021  | Relational Learning |
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

### Slides
[First part, Nada Lavrač](http://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-01-Introduction-NL.pdf)<BR/>
[Second part, Ljupčo Todorovski](http://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-01-Introduction-LT.pdf)<BR/>
Last update: 15th of January 2021, 9:10 CET

### Literature
* James G, Witten D, Hastie T and Tibshirani R (2013) An Introduction to Statistical Learning. Springer, New York. Available at [https://statlearning.com/](https://statlearning.com/). Sections 1 and 2, check also the exercises at the end of Section 2.

* Bramer M (2007) Principles of Data Mining. Springer, Berlin. [DOI:10.1007/978-1-84628-766-4](https://doi.org/10.1007/978-1-84628-766-4). An introductory textbook for refreshing your knowledge on basics of data mining. The first edition of the textbook is also available at [ResearchGate](https://www.researchgate.net/publication/220688376_Principles_of_Data_Mining), `https://www.researchgate.net/publication/220688376_Principles_of_Data_Mining`


## 2: Learning Rules
* Covering algorithm and its variants
* Association rules and subgroup discovery
* Evaluating rules and rule sets

[Exercises](./02/)

## 3: Relational Learning
* Learning relational rules
* Inductive logic programming
* Propositionalization
* Wordification and Python-RDM


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

### Slides and Exercise Materials
[Slides](http://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-06-SVM.pdf)<BR/>
[Exercises](./06-SVM/)<BR/>
Last update: 14th of January 2021

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


## 9: Dimensionality reduction with Autoencoders
* Autoencoders as general embedding approach
* Taxonomy of autoencoders: regularization and denoising
* Autoencoders in R

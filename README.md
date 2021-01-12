# Machine Learning @ Applied Statistics with Network Analysis, HSE, Moscow

This repository includes teaching materials related to the elective course Machine Learning taught at the [HSE-Moscow](https://www.hse.ru/en/) masters programme [Applied Statistics with Network Analysis](https://www.hse.ru/en/ma/sna/). The materials are organized in sections corresponding to lecture days. Each section provides a brief outline of the topics addressed, access to the lecture slides, outline of the practical exercises and seminars, and references to the relevant literature.

For further information on the course, students can contact the lecturers via email at [Nada Lavrač](mailto:nada.lavrac@ijs.si), `nada.lavrac@ijs.si` and [Ljupco Todorovski](mailto:ljupco.todorovski@fu.uni-lj.si), `ljupco.todorovski@fu.uni-lj.si`.


## Tentative Course Schedule for the Academic Year 2020/21

You can follow the lectures using the following [Zoom link](https://fmf-uni-lj-si.zoom.us/j/97756216461), `https://fmf-uni-lj-si.zoom.us/j/97756216461` or join the Zoom meeting using the ID `977 562 16461`.

| Date                           | Topic                                                 |
------------------------------------------------------------------------------------------
| Thursday, 14th of January 2021 | Introduction to Machine Learning                      |
| ...                            |                                                       |
------------------------------------------------------------------------------------------

## Topic 1: Introduction to Machine Learning
* Basic definitions and taxonomy of learning tasks
* Learning performance, evaluation of learning
* Examples of applications

[Slides](http://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/01-intro.pdf)

### Literature


## Topic 2: Learning Rules
* Covering algorithm and its variants
* Association rules and subgroup discovery
* Evaluating rules and rule sets

[Exercises](./02/)

## Topic 3: Relational Learning
* Learning relational rules
* Inductive logic programming
* Propositionalization
* Wordification and Python-RDM


## Topic 4: Learning from Heterogeneous Data
* Propositionalization of heterogeneous information networks
* Learning from taxonomies and ontologies
* Semantic learning with HINMINE


## Day 5: Learning Ensembles
* Why ensembles: bias and variance decomposition of the predictive error
* Boosting, Bagging, Feature subspaces, Random forests
* Out of bag error estimate, feature importance
* Random forests in R


## Day 6: Support Vectors Machines and Kernels
* Linear support vector machine
* Non-linearity and kernel functions
* Selecting kernels, setting hyper-parameters
* Support vector machines and kernels in R

[Slides](http://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/06-svm.pdf)

[Exercises](./06/)

### References

Section 9 in (James et al 2013) [An Introduction to Statistical Learning](http://faculty.marshall.usc.edu/gareth-james/ISL/). Springer, New York. Check also exercises 1-8 in the same section.


## Day 7: Artificial neural networks and deep learning
* General intro to ANNs
* Feed-forward networks and back propagation
* Towards deep networks: Convolutional networks
* ANNs in R


## Day 8: Complex data types and embeddings
* Embeddings for text data, word2vec and doc2vec
* Embeddings for network data, node2vec
* Embeddings in R


## Day 9: Autoencoders
* Autoencoders as general embedding approach
* Taxonomy of autoencoders: regularization and denoising
* Autoencoders in R

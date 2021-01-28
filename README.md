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
| Tuesday, 26th of January 2021   | [Learning from Heterogeneous Data](#4-learning-from-heterogeneous-data) |
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
[Learning Rules](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-02-Rule-Learning-NL.pdf)<BR/>
Last update: 20th of January 2021, 15:00 CET

### Exercise Materials
[Learning Decision Trees and Rules in R](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/02/HSE-02-Learning-Rules-LT.nb.html)<BR/>
Last update: 28th of January 2021, 15:20 CET

### Literature
* Fürnkranz J, Gamberger D and Lavrač N (2012) Foundations of Rule Learning. Springer, Berlin. [DOI:10.1007/978-3-540-75197-7](https://doi.org/10.1007/978-3-540-75197-7). Chapters 1 and 2, available [here](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/readings/fur-etal-12-foundations-of-rule-learning-chapters-1-2.pdf).


## 3: Relational Learning
* Learning relational rules
* Inductive logic programming
* Propositionalization
* Wordification and Python-RDM

### Lecture Slides
[Relational Learning](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-03-Relational-Learning-NL.pdf)<BR/>
Last update: 26th of January 2021, 20:10 CET

### Exercise Materials
[Relational Learning in Python](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/03/HSE-03-Relational-Learning-LT.zip)<BR/>
Last update: 26th of January 2021, 15:20 CET

### Literature
* Džeroski S and Lavrač N (2001) Relational Data Mining. Springer, Berlin. [DOI:10.1007/978-3-662-04599-2](https://doi.org/10.1007/978-3-662-04599-2). Chapter 1, available [here](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/readings/dze-lav-01-intro-to-ilp.pdf).
* Perovšek M, Vavpetič A, Kranjc J, Cestnik B and Lavrač N (2015) Wordification: Propositionalization by unfolding relational data into bags of words. [DOI:10.1016/j.eswa.2015.04.017](http://doi.org/10.1016/j.eswa.2015.04.017). Available [here](https://kt.ijs.si/NadaLavrac/Publications/ESwA-2015-Wordification.pdf).
* Železný F and Lavrač N (2006) Propositionalization-based relational subgroup discovery with RSD. [DOI:10.1007/s10994-006-8633-8](http://doi.org/10.1007/s10994-006-8633-8). Available [here](http://kt.ijs.si/nada_lavrac/Publications/ML-2006-SubgroupDiscoveryWithRSD.pdf).


## 4: Learning from Heterogeneous Data
* Semantic relational learning with ontologies
    + Propositionalization, Hedwig and NetSDM
* Propositionalization of heterogeneous information networks
    + TEHmINE and HINMINE
* Practical exercises with HINMINE

### Lecture Slides
[Semantic Relational Learning](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-04a-Heterogeneous-Data-Part1-NL.pdf)<BR/>
Last update: 26th of January 2021, 20:20 CET

### Exercise Materials
[HINMINE in Python](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/04/HSE-04-Heterogeneous-Data-LT.zip)<BR/>
Last update: 28th of January 2021, 15:20 CET

### Literature
* Kralj J, Robnik-Šikonja M and Lavrač N (2019) NetSDM: semantic data mining with network analysis. [Journal of Machine Learning Research 20: 1-50](https://jmlr.org/papers/v20/17-066.html).
* Kralj J, Robnik-Šikonja M and Lavrač N (2018) HINMINE: Heterogeneous Information Network Mining with Information Retrieval Heuristics. [DOI:10.1007/s10844-017-0444-9](https://doi.org/10.1007/s10844-017-0444-9). Available [here](http://lkm.fri.uni-lj.si/rmarko/papers/Kralj2017-JIIS-preprint.pdf).



## 5: Learning Ensembles
* Why ensembles: variance reduction
* Boosting, bagging, feature subspaces, random forests
* Out-of-bag error estimate, attribute importance
* Bagging and random forests in R

### Lecture Slides
[Learning Ensembles](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-05-Learning-Ensembles-LT.pdf)<BR/>
Last update: 28th of January 2021, 15:50 CET

### Exercise Materials
[Bagging and Random Forests in R](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/05/HSE-05-Learning-Ensembles-LT.nb.html)<BR/>
Last update: 28th of January 2021, 15:10 CET

### Literature
* James G, Witten D, Hastie T and Tibshirani R (2013) An Introduction to Statistical Learning. Springer, New York. Available at [https://statlearning.com/](https://statlearning.com/). Section 8.2 (Bagging, Random Forest, Boosting), check also exercises 5 and 7-12 at the end of Section 8.


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

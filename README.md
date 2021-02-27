# Machine Learning @ Applied Statistics with Network Analysis, HSE, Moscow

This repository includes teaching materials related to the elective course Machine Learning taught at the [HSE-Moscow](https://www.hse.ru/en/) masters programme [Applied Statistics with Network Analysis](https://www.hse.ru/en/ma/sna/). The materials are organized in sections corresponding to lecture days. Each section provides a brief outline of the topics addressed, access to the lecture slides, outline of the practical exercises and seminars, and references to the relevant literature.

For further information on the course, students can contact the lecturers via email at [Nada Lavrač](mailto:nada.lavrac@ijs.si), `nada.lavrac@ijs.si` and [Ljupco Todorovski](mailto:ljupco.todorovski@fu.uni-lj.si), `ljupco.todorovski@fu.uni-lj.si`.


## Grading

The grading for this course will be based on two types of assignments, homework and written exam. The schedule of the assignments is summarized in the following table:

| Assignment   | Grading | Submission Deadline (Date) |
|--------------|---------|----------------------------|
| [Homework 1](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/assignment-1/HSE-first-assignment.nb.html) |   25%| 16th of February 2021|
| [Homework 2](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/assignment-2/HSE-second-assignment.nb.html) |     25%| 25th of February 2021|
| Written Exam |     50%| 2nd of March 2021 @12:00 (12:00 pm) Moscow time |

Please note that the schedule is now final. We are going to organize additional hour of discussion related to the second homework and feedback on the first one on Tuesday, 23rd of February 2021 at 18:30 (6:30pm) Moscow time.

### Handling Late Submissions
* For the first homework, you can delay the submission for up to ten days: therefore, the **ultimate deadline for submitting the first homework is 26th of February**. Each day of delay after 16th of February will reduce your homework score by 1%: for example, if you submit your homework on 21st of February (five days of delay) and your homework were initially evaluated with 20%, your final grade, due to the 5 days delay, will be 15%.
* The **ultimate deadline for submitting the second homework is 2nd of March**. The same rules for reducing the score as above apply, i.e., 1% penalty for one day of delay.

### Student Clusters and Groups

We have noticed that there are two clusters of students attending the course:

1. Seventeen (17) students that have chosen the course officially. These students can work on the homework assignments and submit their solutions in groups with other students **from this cluster only** (up to three students per group). All students from this cluster are expected to take the written exam.<BR/>This cluster includes the following students: Borisyuk Anna, Vidovic Milica, Vorobeva Maria, Danilova Kseniia, Eremenko Alexandra, Kuzina Maria, Makhsudova Elvina, Parkhaeva Olga, Khairullina Dinara, Shabanova Ekaterina, Shakhova Anna, Petrov Gleb, Vladimirova Ksenia, Kozlova Yulia, Li Ling, Stremousov Alexander, and Chzu Chongrui.
1. Other students that attend the course voluntarily and are not on the official list of course students. These students can work on the homework assignments and submit their solutions in groups with other students **from this cluster only** (up to three students per group). The students from this cluster will not be able to take the written exam.

### Other Information 

The written exam will be composed of three types of questions: (1) multiple choice questions and (2) questions requiring short answers related to the methodology and theory of machine learning, as well as (3) a practical exercise that will require performing a certain learning task on given data and providing answers to specific questions related to the obtained models and results.


## Tentative Course Schedule for the Academic Year 2020/21

You can follow the lectures using the following [Zoom link](https://fmf-uni-lj-si.zoom.us/j/97756216461), `https://fmf-uni-lj-si.zoom.us/j/97756216461` or join the Zoom meeting using the ID `977 562 16461`.

| Date                            | Topic/Section                                         |
|---------------------------------|-------------------------------------------------------|
| Thursday, 14th of January 2021  | [Introduction to Machine Learning](#1-introduction-to-machine-learning) |
| Tuesday, 19th of January 2021   | [Learning Rules](#2-leatning-rules) |
| Thursday, 21st of January 2021  | [Relational Learning](#3-relational-learning) |
| Tuesday, 26th of January 2021<BR/>Thursday, 28th of January 2021   | [Learning from Heterogeneous Data](#4-learning-from-heterogeneous-data) |
| Thursday, 28th of January 2021<BR/>Tuesday, 2nd of February 2021  | [Learning Ensembles](#5-learning-ensembles) |
| Thursday, 4th of February 2021  | [Artificial Neural Networks and Deep Learning](#6-neural-networks-and-deep-learning) |
| Tuesday, 9th of February 2021<BR/>Thursday, 11th of February 2021 | [Embedding Complex Data Types](#7-embedding-complex-data-types) |
| Thursday, 11th of February 2021 | [Dimensionality Reduction with Autoencoders](#8-dimensionality-reduction-and-autoencoders) |
| Tuesday, 16th of February 2021  | [Literature-Based Discovery and Support Vector Machines](#9-literature-based-discovery-and-support-vector-machines) |


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
Last update: 26th of January 2021, 20:20 CET<BR/>
[Heterogeneous Information Networks](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-04b-Heterogeneous-Data-Part2-NL.pdf)<BR/>
Last update: 23rd of February 2021, 17:40 CET

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
Last update: 2nd of February 2021, 22:10 CET

### Exercise Materials
[Bagging and Random Forests in R](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/05/HSE-05-Learning-Ensembles-LT.nb.html)<BR/>
Last update: 4th of February 2021, 15:40 CET

### Literature
* James G, Witten D, Hastie T and Tibshirani R (2013) An Introduction to Statistical Learning. Springer, New York. Available at [https://statlearning.com/](https://statlearning.com/). Section 8.2 (Bagging, Random Forest, Boosting), check also exercises 5 and 7-12 at the end of Section 8.


## 6: Neural Networks and Deep Learning
* General introduction to NNs
* Feed-forward networks and back propagation
* Towards deep networks: Convolutional networks
* Neural networks in R

### Lecture Slides
[Neural Networks and Deep Learning](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-06-Neural-Networks-LT.pdf)<BR/>
Last update: 4th of February 2021, 15:40 CET

### Exercise Materials
[Neural Networks in R](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/06/HSE-06-Neural-Networks-LT.nb.html)<BR/>
Last update: 4th of February 2021, 15:40 CET

### Literature
* Hastie T, Tibshirani R and Friedman J (2009) The Elements of Statistical Learning: Data Mining, Inference, and Prediction. Springer, New York. Available at [https://web.stanford.edu/~hastie/ElemStatLearn/](https://web.stanford.edu/~hastie/ElemStatLearn/). Sections 11.2 to 11.8 of Chapter 11.
* Nielsen M (2019) Neural Networks and Deep Learning. Available at [http://neuralnetworksanddeeplearning.com/](http://neuralnetworksanddeeplearning.com/). Excellent and highly recommended further reading.


## 7: Embedding Complex Data Types
* Complex data types: semi-structured data and networks
* Embedding of semi-structured data, bag-of-words
* Embedding of words and text documents, word2vec and doc2vec
* Classifying text documents in R
* Embedding network nodes, node2vec
* node2vec in R

### Lecture Slides
[Embedding Semi-Structured Data](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-07-Complex-Data-Types-1-LT.pdf)<BR/>
Last update: 9th of February 2021, 22:20 CET<BR/>
[Embedding Networks](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-07-Complex-Data-Types-2-LT.pdf)<BR/>
Last update: 11th of February, 11:10 CET

### Exercise Materials
[Classifying Text Documents in R](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/07/HSE-07-Classifying-Text-Documents-LT.nb.html)<BR/>
Last update: 9th of February 2021, 22:20 CET<BR/>
[Classifying Network Nodes in R](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/07/HSE-07-Classifying-Network-Nodes-LT.nb.html)<BR/>
Last update: 11th of February 2021, 15:00 CET

### Literature
* Mikolov T, Chen K, Corrado G, Dean J (2013) Efficient estimation of word representations in vector space. [arXiv:1301.3781](https://arxiv.org/abs/1301.3781).
* Le QV, Mikolov T (2014) Distributed representations of sentences and documents. [arXiv:1405.4053](https://arxiv.org/abs/1405.4053).
* Grover A, Leskovec J (2016) node2vec: Scalable feature learning for networks. [arXiv:1607.00653](https://arxiv.org/abs/1607.00653).
* Perozzi B, Al-Rfou R, Skiena S (2014) DeepWalk: Online learning of social representations. [arXiv:1403.6652](https://arxiv.org/abs/1403.6652).


## 8: Dimensionality Reduction and Autoencoders
* Classic methods for dimensionality reduction, PCA
* Autoencoders as general embedding approach
* Taxonomy of autoencoders: regularization and de-noising

### Lecture Slides
[Dim Reduction and Autoencoders](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-08-Dim-Reduction-Autoencoders-LT.pdf)<BR/>
Last update: 11th of February 2021, 13:20 CET

### Literature
* James G, Witten D, Hastie T and Tibshirani R (2013) An Introduction to Statistical Learning. Springer, New York. Available at [https://statlearning.com/](https://statlearning.com/). Section 10.2: Principal Components Analysis.
* Goodfellow I, Bengio Y, Courville A (2016) Deep Learning. MIT Press. Available at [https://www.deeplearningbook.org/](https://www.deeplearningbook.org/). Introductory part of Section 14.
* Charte D, Charte F, García S, del Jesus MJ, Herrera F (2018) A practical tutorial on autoencoders for nonlinear feature fusion: Taxonomy, models, software and guidelines. [arXiv:1801.01586](https://arxiv.org/abs/1801.01586).


## 9: Literature-Based Discovery and Support Vector Machines
* Literature-based discovery
    + Connecting unrelated terms across domains
* Support vector machines and kernels
	+ Linear support vector machine
	+ Non-linearity and kernel functions
	+ Selecting kernels, setting hyper-parameters

### Lecture Slides
[Literature-Based Discovery](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-09-Literature-Based-Discovery-NL.pdf)<BR/>
Last update: 16th of February 2021, 17:30 CET<BR/>
[Support Vector Machines and Kernels](https://kt.ijs.si/~ljupco/lectures/hse-moscow-ml/HSE-09-SVM-Kernels-LT.pdf)<BR/>
Last update: 16th of February 2021, 10:20 CET

### Literature
* James G, Witten D, Hastie T and Tibshirani R (2013) An Introduction to Statistical Learning. Springer, New York. Available at [https://statlearning.com/](https://statlearning.com/). Section 9, check also exercises 1-8 in the same section.

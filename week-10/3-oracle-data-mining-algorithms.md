# ODM Algorithms 

According to Berger (2011), there are various algorithms that are used for specific DM problems such as: 

- classification
- regression
- anomaly detection
- attribute importance
- association rules
- clustering 
- feature extraction.

## Clasification 

Algorithims or techiniques for solving classification probblems use past data to build DM models taht can classify present or future data. 
They aslso make predictions about class/ group membership. 

ODM includes algorithms such as 

- logistic regression 
- decision trees 
- naive Bayes 
- support vector machine 

These are sued for addressing classification problems 

### Logistic regression

This is a classic statistical technique for classification problems having many input variables, text and transactional data. 

### Decision Trees 

This is a popular choice for addressing several classification problems in the form of human readable logic: IF ... THEN ruls. 

### Naive Bayes 

Naive Bayes is based on conditional probabilities. It is usually simple, efficient and is a very commonly used classification techinique.
This uses Bayes' Theorem, which works out the probability of an event happening in the future based on the probability of another similar event that has happened in the past. 

### Support Vector Machine (SVM)

SVM is a sophisticated algorithim for addressing binary as well as multi class classification problems (for example, transactional data, gene expression data analysis and text mining)

## Regression 

We defined regression in week 9 already, which helps predict new values of a continuous variable based on known values. ODM supports multiple regression and SVMs for addressing regression problems 

## Anomaly Detection 

Anomaly means 'something different, abnormal, perculiar, or not easily classified; deviation from the common rule'. 
Anomaly detection problem deals with the identification of anomalous cases based on deviation from the norm, for example, fraud detection, cancer-causing tumor detection and so on, for which ODM supports one-class SVMs, which can be used for anomoly detection. 

## Attribute Importance 

This technique ranks the given attributes based on their strength of relationship with the target or response attribute, for example, finding out important attributes impacting customers' satisfaction or the problem of determining the criteria/attributes used by product procurement agents in deciding which suppliers to choose, for which ODM provides Minimum Description Length (MDL) algorithm (Oracle, 2009).

## Association Rules

In week 9 you learned that association rules uncover hidden relationships among data, for which ODM offers Apriori algorithm, for example, for addressing market basket analysis and link analysis (Oracle, 2009).

## Clustering 

Clustering has been already defined in week 9 to be an unsupervised learning technique that assigns given values to target groups based on similarities among the values rather than any predefined classes. In this regard, ODM provides enhanced K-Means and orthogonal partitioning clustering 

## Feature Extraction 

The feature extraction technique creates new attributes based on a liniar combination of existing attributes, which helps reduce large datasets into smaller dataset with fewer representative attributes for which ODM provides a non-negative matrix factorization algorithm (NMF)
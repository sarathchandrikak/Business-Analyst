#Evaluation Metrics

Here, evaluation metrics used for Supervised Learning are included. The two types of data available in this are classification and regression. 
Classification refers to the division of data into classes or categories and regression problems deals with predicting values. 
Here are some of the evaluation metrics used for Supervised Learning.


## Confusion Matrix
* It can be defined as a matrix used to represent predicted values against actual values.
* It is used for Classification problems.
* Its a N * N matrix where N represents the number of classes in the given data or in target variable or in dependent data. 
* In this each row represents the actual class and columns represent predicted class.
* Values are represented as follows:
    *   TP -> True Positives
        * All the positives that are predicted as positives
    *   TN -> True Negatives
        * All the negatives that are predicted as negatives
    *   FP -> False Positives
        * All the negatives that are predicted as postives or values which are mistakenly predicted as positives
    *   FN -> False Negatives
        * All the positives that are precited as negatives or values which are mistakenly predicted as negatives
* Total number of actual positives are given by TP + FN
* Total number of actual negatives are given by TN + FP


## Accuracy

       

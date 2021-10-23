# 📍Evaluation Metrics

Here, evaluation metrics used for Supervised Learning are included. The two types of data available in this are classification and regression. 
Classification refers to the division of data into classes or categories and regression problems deals with predicting values. 
Here are some of the evaluation metrics used for Supervised Learning.


## 👉 Confusion Matrix

* It can be defined as a matrix used to represent predicted values against actual values.
* It is used for Classification problems.
* Its a N * N matrix where N represents the number of classes in the given data or in target variable or in dependent data. 
* In this each row represents the actual class and columns represent predicted class.
* Values are represented as follows:
    *   ### TP - True Positives
        * All the positives that are predicted as positives
    *   ### TN - True Negatives
        * All the negatives that are predicted as negatives
    *   ### FP - False Positives
        * All the negatives that are predicted as postives or values which are mistakenly predicted as positives
    *   ### FN - False Negatives
        * All the positives that are precited as negatives or values which are mistakenly predicted as negatives
* Total number of actual positives are given by TP + FN
* Total number of actual negatives are given by TN + FP


## 👉 Accuracy

Ratio of total number of correct predictions over the total predictions.

   ```math
   Accuracy = TP + TN / TP + TN + FP + FN
   ```
Accuracy is not always a correct metric for Classification problem. It also depends on the distribution of classes. 

## 👉 Alternatives to Accuracy

#### True Positive Rate

   * Ratio of values predicted as positive by the model which were actually positive and total positives in the data.

  ```math
     True positive rate = TP / TP + FN
  ```
#### False Negative Rate

   * Ratio of values predicted as negative by the model which were actually positive to total positives in the data.

 ```math
    False negative rate = FN / TP + FN 
 ```
   * It focuses on False Negative values. So, less the FNR (False Negative Rate), better is the model. 

#### True Negative Rate

   * Ratio of values predicted as negative by the model which were actually negative to total negatives in the data.

 ```math
    True negative rate = TN / FP + TN 
 ```
   * It is used to calculate the business case - How many negative values are predicted exactly as negative. 

#### False Positive Rate

   * Ratio of values predicted as positive by the model which were actually negative to total negatives in the data.

 ```math
    False positive rate = FP / FP + TN 
 ```
   * It focuses on False Positive values. So, less the FPR (False Positive Rate), better is the model. 

Based on business requirement, needed evaluation metic can be computed. 

## 👉 Precision and Recall

Precision
   * It is defined as ratio of values predicted as positives that were actually positive. 
   * Out of all positive predictions, how many are actually positive 
   
```math 
   Precision = TP / TP + FP 
```
   
Recall
   * It is defined as ratio of values predicted as positives to total number of positives. 

```math
   Recall = TP / TP + FN 
```

## 👉 F1 Mean 

Harmonic mean of Precision and Recall. It is maximum when precision = recall









      

       

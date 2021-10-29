# 📍Evaluation Metrics

Here, evaluation metrics used for Supervised Learning are included. The two types of data available in this are classification and regression. 
Classification refers to the division of data into classes or categories and regression problems deals with predicting values. 
Here are some of the evaluation metrics used for Supervised Learning.

# 📍Evaluation Metrics for Classification

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
   * Avoiding false positives is more important than encountering false negatives. 
   
Recall
   * It is defined as ratio of values predicted as positives to total number of positives. 
   * Out of all positive values, how many did the machine predicted as positive. 

```math
   Recall = TP / TP + FN 
```
   * Avoiding false negatives is prioritised over encountering false positives. 

## 👉 F1 Score

Harmonic mean of Precision and Recall. Since its the mean, it is maximum when precision = recall. More the F1 Score better is the model. 

## 👉 Thresholding

Calculating the probabilities of TPR, TNR, FPR and FNR by modifying the threshold values instead of changing the model.

## 👉 AUC ROC

* AUC stands for area under the curve. 
* ROC stands for Receiver Operating Characteristic. 
* AUC ROC implies area under the ROC curve. 
* It is used as an evaluation metric for binary classification.
* This metric gives the trade off between the true positives and false positives. 
* It cannot be used to compare two models, since it doesn't consider the value of probability, 

## 👉 Log Loss

* It is the negative average of the log of corrected probabilities in each instance.
* Corrected probabilities are the probability values for all occurance predicted as 1. Probability of an event being 1 = 1 - probability of event being 0.
![](https://github.com/sarathchandrikak/Business-Analyst/blob/main/images/log_loss.png) 


# 📍Evaluation Metrics for Regression 

Following are the different metrics:

* Mean Absolute Error 
* Mean Squared Error
* Root mean Squared Error
* Root Mean Squared Log Error
* R-Squared
* Adjusted R-Squared

In the above metrices, error is defined as the difference between actual and predicted values. 

» Mean Absolute Error -> Mean of absolute of errors. 

» Mean Squred Error -> Mean of Square of the errors. A drawback to this is it changes the unit of the error.

» Root mean Squared Error -> Root of the mean of square of error. It is most commonly used for regression problems. 

» Root mean Square Log Error -> For some cases RMSE seems to be same even with much variation in the actual and predicted values, since it just considers the difference. 
To overcome such situations log values followed by squares of the values are computed. 

» R-Squared -> R-squared explains to what extent the variance of one variable explains the variance of the second variable.

» Adjusted R-Squared -> Adjusted R-squared is a modified version of R-squared that has been adjusted for the number of predictors in the model. The adjusted R-squared increases when the new term improves the model more than would be expected by chance. It decreases when a predictor improves the model by less than expected. Typically, the adjusted R-squared is positive, not negative. It is always lower than the R-squared.

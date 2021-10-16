# 📍 Business Forecasting Simulation Project 

## ❇️ Problem Statement

Assurenext, a radical investment company that is at the intersection of technology and human interaction. Their focus is on traditional methods. It has been achieved through another channel named Robo-Assurance in which smart machines have been implemented across various locations. These smart machines study the consumers in the locations and suggest the best insurance plans. These have been installed in bookstores and fine dining places. They were installed around 2009 and this was effective for a quite good amount of time. Customers overtime have gone blind to the presence of machines. It would be quite helpful for getting the info on upcoming business, policy trends.


## ❇️ Points to be Analysed

    * Create a forecast for business (Premium received in 2016, 2017) based on past data from 2009 - 2015
    * How many new machines would be required in order to achieve 17M INR of Premium from new policies in 2017?
    * Assuming 6500 is the highest number of machines made in a year and average premium from a policy being INR 55,000, 
      What should be the business in 2016 & 2017 (Quarter on Quarter)? 
      
## ❇️ Dataset

    Data is available in 3 excel sheets. Following data is available.
        * First  - Business Sourced from new insurance policies and Machines Installed month wise.
        * Second - Year wise Average Premium / policy 
        * Third - Month wise total machines installed
        
## ❇️ Solution Approach and Analysis

Total Business is calculated as per our assumption as follows

     Total Business = Total Number of Policies * Average Premium Per Policy

    Total Business = (Number of Machines * Number of Policy Per Machine) * Average Premium Per Policy

    Total Business = ((Total Previous Years Machine * Number of Policy Per Previous Year Machine) + 
                      (Total New Machines * Number of Policy Per New Machine)) * Average Premium Per Policy

As per the assumptions given data is used to calculate Yearly and Monthly Business trend, total business and total machines by year. 
Here the mean of the previous two years is considered for predicting the business and machines while forecasting for the upcoming years. 
Quarter Business trend is formulated from monthly business trends. 

## ❇️ Findings 

* Forecasted approx number of machines that can be installed based on the previous data. 
* Forecasted average premium as per the business and as per the pre defined constraint.
* Predicted number of policies and total premium for the next two years.

Refer here for the following sheets. 

    * Number_machine
    * Average_premium
    * Yearly_Biz_Prediction
    
Values with respect to the analysis are included in the Challenge sheet. 













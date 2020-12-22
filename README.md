# Irisdata-R

## Aim:
Predict the species of a flower from the following measurements : Sepal Length, Sepal Width, Petal Length and Petal Width.

## Data:
Using the Iris dataset which is present in the R

## Libraries:
Here we used the following R libraries:
MASS
caret
e1071
randomForest

## Approach:
Building 5 classification models in R and identifying which works the best for our data.
The 5 models are:
1. Linear Discriminant Analysis
2. Classification and Regression Tree
3. K-Nearest Neighbors
4. Support Vector Machine
5. Random Forest

We built the model in R and used 10-fold crossvalidation process to estimate accuracy.
For this we used trainControl(method='cv' , number=10) in each model

The code used is present in the file irisdata.r
The summary of all 5 models is present in the text file named model_summary.txt
The summary of the results and comparison of models in present in text file named result_summary.txt
The dot plot of result comparing the Accuracy and Kappa of all 5 models is in the images Rplot.

## Conclusion:
By comparing all the models and studying the dot plot of result we can conclude the Linear Discrimiant Analysis [LDA] works best for our data having,
Accuracy of 97.50% and Kappa 96.25%.
The summary and confusion matrix of the lds model is present in the text file most_accurate_model.txt.

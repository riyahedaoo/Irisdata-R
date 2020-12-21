attach(iris)
set.seed(100)
dt = sort(sample(nrow(iris), nrow(iris)*0.8))
train_data = iris[dt,]
test_data = iris[-dt,]

library(caret)
library(randomForest)
library(e1071)

#Linear Discriminant Analysis:
model1 <- train(Species~. , data = train_data, method="lda", trControl = trainControl(method = "cv", 10))

#Classification and Regression tree:
model2 <- train(Species~. , data = train_data, method="rpart", trControl = trainControl(method = "cv", 10))

#K-Nearest Neighbors:
model3 <- train(Species~. , data = train_data, method="knn", trControl = trainControl(method = "cv", 10))

#Support Vector Machines:
model4 <- train(Species~. , data = train_data, method="svmRadial", trControl = trainControl(method = "cv", 10))

#Random Forest:
model5 <- train(Species~. , data = train_data, method="rf", trControl = trainControl(method = "cv", 10))


result <- resamples(list(model1,model2,model3,model4,model5))
summary(result)
dotplot(result)
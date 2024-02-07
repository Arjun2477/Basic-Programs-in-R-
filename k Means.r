data(iris)
head(iris)
install.packages("ggplot2")
library(ggplot2)

# Create a scatter plot
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Petal.Length, size = Petal.Width, shape = Species)) +
  geom_point() +
  scale_color_gradient(low = "blue", high = "red") +
  labs(title = "Iris Dataset: Four-Dimensional Visualization", x = "Sepal Length", y = "Sepal Width", color = "Petal Length", size = "Petal Width") +
  theme_minimal()
# Apply k-means clustering with k = 3 (for the three species of Iris)
set.seed(20) # for reproducibility
iris_cluster <- kmeans(iris[, 1:4], centers = 3)
iris_cluster$cluster
# Add the cluster assignments to the iris dataset
iris$Cluster <- as.factor(iris_cluster$cluster)

# Plot the clusters
library(ggplot2)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Cluster)) +
  geom_point() +
  labs(title = "K-means Clustering of Iris Dataset")
# attach additional library for a confusion matrix
install.packages("caret")
library(caret)

# relabeling
iris$ClusterGuessedName <- factor(iris$Cluster, labels = c("setosa", "versicolor", "virginica"))

# Create a confusion matrix
confusionMatrix(iris$ClusterGuessedName, iris$Species)


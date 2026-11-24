from pyspark.ml import Pipeline
from pyspark.ml.classification import DecisionTreeClassifier
from pyspark.ml.feature import StringIndexer, VectorIndexer
from pyspark.ml.evaluation import MulticlassClassificationEvaluator
from pyspark.ml.tuning import CrossValidator, ParamGridBuilder

# Load the data stored in LIBSVM format as a DataFrame.
data = spark.read.format("libsvm").load("/FileStore/tables/colon_cancer_01.txt")

# Index labels, adding metadata to the label column.
# Fit on whole dataset to include all labels in index.
labelIndexer = StringIndexer(inputCol="label", outputCol="indexedLabel").fit(data)

# Automatically identify categorical features and index them.
# Features with more than 4 distinct values are treated as continuous.
featureIndexer = VectorIndexer(
    inputCol="features", outputCol="indexedFeatures", maxCategories=4
).fit(data)

# Split the data into training and test sets (30% held out for testing).
(trainingData, testData) = data.randomSplit([0.7, 0.3])

# Train a decision-tree model.
dt = DecisionTreeClassifier(
    labelCol="indexedLabel", featuresCol="indexedFeatures"
)

# Chain indexers and tree in a pipeline.
pipeline = Pipeline(stages=[labelIndexer, featureIndexer, dt])

evaluator = MulticlassClassificationEvaluator(
    labelCol="indexedLabel",
    predictionCol="prediction",
    metricName="accuracy"
)

paramGrid = (
    ParamGridBuilder()
    .addGrid(dt.maxBins, [2, 5, 10, 20])
    # .addGrid(dt.impurity, ["gini", "entropy"])
    .build()
)

crossval = CrossValidator(
    estimator=pipeline,
    estimatorParamMaps=paramGrid,
    evaluator=evaluator,
    numFolds=3
)

# Train model and generate predictions for the held-out test data.
cvModel = crossval.fit(trainingData)
predictions = cvModel.transform(testData)
predictions.select("prediction", "indexedLabel", "features").show(5)

accuracy = evaluator.evaluate(predictions)
print("Test Error = %g " % (1.0 - accuracy))

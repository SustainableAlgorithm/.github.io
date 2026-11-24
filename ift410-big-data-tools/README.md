# IFT 410 — Big Data Tools and Practices

**Arizona State University · Spring 2023**

This portfolio entry summarizes undergraduate coursework exploring the data lifecycle, data preparation, statistical and machine-learning methods, and distributed big-data platforms. The archive contains module notes, assignments, labs, Python examples, and work with Apache Spark, Hadoop, and collaborative filtering.

## Course topics

| Area | Topics represented |
|---|---|
| Python foundations | Lists, arrays, dictionaries, file handling, pandas DataFrames, dataset exploration |
| Data understanding | Data types and measurement scales, data quality, preprocessing, similarity and correlation |
| Classification | Decision trees, k-nearest neighbors, support vector machines |
| Model evaluation | Training/test splits, cross-validation, model selection and evaluation |
| Regression | Linear and nonlinear regression, prediction error, RMSE |
| Clustering | K-means, hierarchical and density-based clustering, silhouette evaluation |
| Anomaly detection | Identifying unusual observations and model-based approaches |
| Big-data storage | Row- vs. column-oriented storage, data formats, Spark SQL |
| ETL | Extraction, transformation, loading, data preparation, Databricks formats |
| Distributed platforms | Hadoop, HDFS, MapReduce, YARN, Apache Spark, Scala |
| Recommendation systems | Collaborative filtering, MovieLens ratings data, Spark ML |

## Representative practical work

### Python data handling
The early modules introduce Python data structures and file processing, then use pandas DataFrames to inspect, select, sort, transform, and summarize tabular data. A dataset exploration exercise reads the Adult Census dataset and counts values in an attribute.

### Classification and model evaluation with Spark
The coursework includes a PySpark pipeline using a decision-tree classifier, label indexing, feature indexing, a training/test split, a multiclass evaluator, and Spark ML cross-validation with a parameter grid.

See [`cross_validation_in_spark.py`](cross_validation_in_spark.py).

### Mushroom data preparation
A Python lab uses pandas to read the mushroom dataset, encode the class label, one-hot encode categorical attributes, and export the resulting features in LIBSVM format.

See [`mushroom_data_preparation.py`](mushroom_data_preparation.py).

### Anomaly detection
A Python exercise introduces column-wise numeric extraction from a tabular dataset as a starting point for computing summary statistics and identifying unusual observations.

See [`anomaly_detection_exercise.py`](anomaly_detection_exercise.py). The submitted file is an incomplete exercise scaffold, not a completed anomaly detector.

### Big-data platforms and recommendation systems
Later modules cover Hadoop's HDFS/MapReduce/YARN architecture, Spark and Spark SQL, data storage formats, ETL, and collaborative filtering using the MovieLens small ratings dataset. The submitted Lab 12 notes report an RMSE of approximately 1.0695 for the collaborative-filtering exercise; this result has not been independently reproduced.

## Skills represented

- Python programming and pandas data manipulation
- Data cleaning, transformation, and feature encoding
- Classification, regression, clustering, and anomaly-detection concepts
- Model evaluation, cross-validation, and RMSE interpretation
- PySpark ML pipelines and distributed data processing
- LIBSVM data preparation
- Hadoop architecture and distributed storage concepts
- Spark SQL, ETL, and collaborative filtering

## Files

- [`cross_validation_in_spark.py`](cross_validation_in_spark.py) — submitted PySpark decision-tree pipeline and cross-validation example.
- [`mushroom_data_preparation.py`](mushroom_data_preparation.py) — submitted pandas preprocessing and LIBSVM export example.
- [`anomaly_detection_exercise.py`](anomaly_detection_exercise.py) — incomplete anomaly-detection exercise scaffold, labeled accordingly.
- [`coursework-topic-guide.md`](coursework-topic-guide.md) — topic guide for the module sequence.

The full course archive also contains assignment writeups, lab reports, lecture materials, datasets, and reference books. Those materials are not copied wholesale into this public portfolio entry.

## Reproducibility and limitations

The scripts are representative coursework samples, not a polished production package. Some depend on local datasets or a Spark environment and hard-coded course paths. The PySpark example expects a LIBSVM file at the Databricks path shown in its source; update that path and configure a Spark session before running elsewhere.

The submitted lab writeups contain screenshots, explanations, and results that are not reproduced here. Numerical results are identified as reported coursework results, not independent benchmarks. The anomaly-detection exercise is explicitly identified as incomplete.

## Academic context

**Institution:** Arizona State University  
**Course:** IFT 410 — Big Data Tools and Practices  
**Term:** Spring 2023

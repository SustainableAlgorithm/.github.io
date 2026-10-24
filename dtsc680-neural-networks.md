# Neural Networks for Imbalanced Binary Classification

**DTSC 680: Applied Machine Learning · Python · TensorFlow/Keras · scikit-learn**

This project demonstrates a compact neural network for binary classification and examines how class weighting changes performance when positive examples are much less common than negative examples.

## Methods

- Clean binary target labels and exclude non-binary labels.
- Split data into training and testing partitions using stratification.
- Impute missing values, standardize numeric features, and one-hot encode categorical features.
- Fit preprocessing on the training partition only to reduce data leakage.
- Build a single-sigmoid-output Keras classifier using binary cross-entropy.
- Compare unweighted and class-weighted training.
- Evaluate accuracy, precision, recall, F1, and the confusion matrix.

## Why class imbalance matters

Accuracy can look strong even when a model misses many positive cases. Recall measures the share of actual positive cases that are identified, while precision measures how many predicted positives are correct. These metrics often trade off against each other.

The supplied assignment notebook recorded these results:

| Metric | Unweighted model | Class-weighted model |
|---|---:|---:|
| Accuracy | 0.9475 | 0.9066 |
| Recall | 0.4061 | 0.7887 |
| F1 score | 0.5467 | 0.5683 |
| Precision | 0.8362 | 0.4442 |

**Interpretation:** In the notebook's reported results, class weighting increased recall from 0.4061 to 0.7887, while precision and overall accuracy decreased. That tradeoff illustrates why model evaluation should reflect the consequences of false negatives and false positives rather than relying on accuracy alone.

These are figures recorded in the original assignment notebook; they have **not** been independently reproduced by the portfolio implementation. They are not clinical evidence and should not be interpreted as a medical diagnostic result.

## Engineering approach

The independent implementation provides reusable preprocessing, class-weight calculation, a Keras model builder, and evaluation helpers. Its test fixtures use synthetic data, so tests validate basic software behavior rather than real-world performance.

## Privacy and responsible use

The original university notebook, coronavirus CSV, exported pickle files, and saved H5 model are not included in this public showcase or the private portfolio repository. The project is a learning demonstration, not a clinical tool. It should not be used to diagnose disease or guide treatment.

## Tools

Python · pandas · NumPy · scikit-learn · TensorFlow/Keras · pytest

---

*Portfolio project in progress. Reported assignment metrics are distinguished from independently reproduced experiments.*

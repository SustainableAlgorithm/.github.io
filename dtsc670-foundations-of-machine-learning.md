# DTSC 670: Foundations of Machine Learning

This collection presents independently written demonstrations of foundational machine-learning workflows inspired by five topic areas: apartment-price regression, census-income classification, handwritten-digit classification, Ridge regression, and polynomial regression.

Original university notebooks and course-provided datasets are not included. The code is maintained privately during review.

## 1. Apartment price regression

A scikit-learn pipeline combines numeric imputation and scaling with categorical imputation and one-hot encoding, then fits a linear regression model. The workflow reports MAE, RMSE, and R² on a held-out split.

## 2. Census income classification

A binary classification pipeline demonstrates a custom category-cleaning transformer, column-specific preprocessing, class-weighted logistic regression, and metrics including precision, recall, F1, and ROC AUC. Because census attributes can reflect structural inequities, predictive performance alone is not evidence of fairness or suitability for decisions about individuals.

## 3. Classification baselines

A comparison of logistic regression and an RBF-kernel SVM on scikit-learn's built-in handwritten-digit dataset. The example demonstrates stratified train/test splitting and classification reporting without redistributing course materials.

## 4. Ridge regression

A comparison of ordinary least squares, stochastic gradient descent, and Ridge regression with cross-validated regularization strength. Scaling is performed within pipelines, and the held-out test set is reserved for final evaluation.

## 5. Polynomial regression

A comparison of linear regression, degree-two polynomial regression, and polynomial-kernel support vector regression. Hyperparameter selection uses cross-validation on training data.

## Engineering practices

- Reusable Python scripts instead of course notebooks.
- Preprocessing and scaling fitted within model pipelines where appropriate.
- Held-out evaluation and cross-validated hyperparameter selection.
- Explicit metric reporting and documented limitations.
- Course datasets and original assignment materials excluded.

## Tools

Python · pandas · NumPy · scikit-learn · linear and logistic regression · Ridge regularization · SVM · polynomial features · model evaluation

## Status

These are independently written starter implementations. The data-dependent workflows have not yet been run against reviewed datasets as part of this portfolio, so no model performance results are claimed. The apartment, census, Ridge, and polynomial scripts expect a suitable local CSV. The digit-classification example uses scikit-learn's built-in dataset.

The complete working code remains private during review. A hiring team can request a code sample for technical review.

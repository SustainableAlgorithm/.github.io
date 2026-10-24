# Machine Learning Model Deployment: Titanic Survival Probability

**DTSC 680 portfolio project · Flask · scikit-learn · Logistic Regression**

This project demonstrates the journey from model training to a small web application. A locally trained scikit-learn pipeline is saved as a model artifact and served through a Flask interface that validates user inputs and displays the model-estimated survival probability.

## What it demonstrates

- Preparing a tabular dataset for binary classification.
- Building a reproducible preprocessing and logistic-regression pipeline.
- Saving and loading a trained model artifact with joblib.
- Building Flask routes and HTML templates.
- Validating form inputs and handling missing model artifacts.
- Testing routes and input-validation behavior without bundling the source dataset.

## Application workflow

1. Train a model locally from a permitted Titanic CSV.
2. Save the fitted pipeline to a local artifact directory.
3. Start the Flask application.
4. Enter age, sex as recorded in the historical dataset, and passenger class.
5. View the model's estimated probability and an explanation of limitations.

## Responsible use and limitations

This is an educational demonstration using historical passenger data. Its output is not a causal estimate, guarantee, or statement about any individual. Historical data and the chosen features have substantial limitations and should not be used to make real-world decisions about people.

The original course notebook, dataset, and serialized model artifact are not included in the public portfolio. The independently written implementation is maintained in a private repository during review. No benchmark accuracy claim is made.

## Tools

Python · Flask · pandas · scikit-learn · Logistic Regression · joblib · pytest

## Code access

The code can be reviewed by a hiring team on request while the working repository remains private.

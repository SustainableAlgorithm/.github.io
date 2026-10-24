# Computer Vision: Image Classification

**DTSC 680 portfolio project · Python · scikit-learn · Image processing**

This project demonstrates a compact computer-vision pipeline for generic, non-person image categories. It uses image preprocessing, Histogram of Oriented Gradients (HOG) feature extraction, a Support Vector Classifier, and held-out evaluation.

## What it demonstrates

- Loading and validating image files.
- Converting images to grayscale and resizing to a consistent input shape.
- Extracting HOG features.
- Training a supervised image classifier.
- Evaluating accuracy, macro precision, macro recall, macro F1, and a confusion matrix.

## Approach

The implementation is a classical computer-vision baseline rather than a deep neural network. HOG captures local gradient patterns, and an SVM learns to separate the supplied labeled categories. The code accepts local image folders and does not bundle a dataset.

## Privacy and scope

The original coursework asked for identification of named people from face images. This public portfolio project deliberately does **not** implement face recognition or identify individuals. It is a fresh implementation for generic non-person image classification. The original assignment notebooks, face images, pretrained VGGFace model, and course submission artifacts are not included.

## Evaluation status

The code includes small synthetic tests for feature extraction and basic classification behavior. Those tests are functional checks, not evidence of real-world accuracy. No benchmark metrics are claimed. A meaningful experiment requires licensed non-person images, a documented train/test split, and a report of class balance and evaluation results.

## Tools

Python · NumPy · Pillow · scikit-image · scikit-learn · pytest

## Code access

The implementation is maintained in a private repository during review. A hiring team can request an appropriate code sample for technical review.

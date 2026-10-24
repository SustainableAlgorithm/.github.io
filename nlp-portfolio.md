# Natural Language Processing Portfolio

**Independent Python implementations · NLP · Probabilistic modeling**

This portfolio project explores four core natural language processing techniques through small, independently written Python implementations: text classification, unigram and n-gram language modeling, Hidden Markov Model sequence decoding, and CKY parsing.

The implementations are being developed separately from university coursework. Original assignment notebooks, course-provided datasets, saved models, and assignment solutions are not included.

## Topics and techniques

### 1. Sentiment classification

A reusable text-classification pipeline built around TF-IDF features, with Logistic Regression, Multinomial Naive Bayes, and Perceptron alternatives. Evaluation helpers report accuracy, macro F1, a confusion matrix, and a class-level report.

### 2. Unigram and n-gram language models

Frequency-based unigram probabilities and conditional n-gram probabilities with additive smoothing. The implementation includes log-likelihood scoring and a Unicode-aware baseline tokenizer. Language-specific tokenization, especially for Japanese, requires a suitable tokenizer and should be evaluated separately.

### 3. Hidden Markov Models and Viterbi decoding

A generic Viterbi decoder that uses log probabilities to find the most likely state sequence for observed tokens. The code is designed to accept transition, emission, and start probabilities supplied by a model-estimation step.

### 4. CKY parsing

A chart parser for binary context-free grammars in Chomsky Normal Form. It constructs one parse tree when a sentence is recognized. Unary rules, epsilon rules, and probabilistic parse ranking are outside the current implementation.

## Review status

Eight small smoke tests passed for core behavior in the current private implementation. These tests are not a benchmark and do not establish real-world performance. The code review identifies additional hardening and documentation work before the implementation should be treated as complete.

## Engineering choices

- Modular Python code organized by technique.
- Small synthetic examples for basic behavioral tests.
- Explicit validation of inputs and model assumptions.
- No bundled course datasets, serialized course models, or private source artifacts.
- No benchmark performance claims without a documented, reproducible experiment.

## Tools

Python · scikit-learn · NumPy · pytest · probabilistic modeling

## Code availability

The implementation is in a private review repository while it is being tested and documented. A hiring team can request access to a suitable code sample during a technical review. The public summary is provided to describe the project without exposing private course materials.

## Limitations and next steps

This is a technical demonstration, not a claim of state-of-the-art NLP performance. Next steps include running the test suite in a clean environment, adding licensed datasets for a documented experiment, reporting baselines and metrics, and extending tokenization support for languages that require specialized segmentation.

---

*Portfolio project in progress. Methods are described accurately; no unverified accuracy claims are made.*

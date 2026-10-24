# Dimensionality Reduction with PCA and t-SNE

**Portfolio project · Applied machine learning · Python · Unsupervised learning**

This project explores how dimensionality-reduction techniques can reveal patterns in a tabular dataset. It compares Principal Component Analysis (PCA), t-distributed Stochastic Neighbor Embedding (t-SNE), and t-SNE applied to a PCA-reduced representation.

## Research question

How do different 2-D embeddings represent species-related structure in penguin measurements and categorical attributes?

## Methods

- Cleaned missing rows for the exploratory run.
- Separated the species label from the input features.
- Standardized numeric features and one-hot encoded categorical features.
- Computed a two-component PCA embedding and its explained-variance ratios.
- Computed t-SNE embeddings from the processed feature matrix and from the PCA coordinates.
- Compared label separation descriptively using silhouette scores.

## Preliminary exploratory results

The local source dataset contained 344 rows; 333 complete rows remained after removing missing values. Numeric scaling and one-hot encoding produced 10 input features.

| Result | Value |
|---|---:|
| PCA component 1 explained variance | 48.33% |
| PCA component 2 explained variance | 18.13% |
| Combined variance explained by first two PCs | 66.46% |
| Species silhouette score, 2-D PCA | 0.323 |
| Species silhouette score, 2-D t-SNE | 0.443 |
| Species silhouette score, t-SNE after 2-D PCA | 0.304 |

These are exploratory measurements from one preprocessing and parameter configuration. Silhouette scores describe the separation of known species labels within these particular embeddings; they are not predictive accuracy. t-SNE can alter apparent distances and cluster shapes, so visual separation should not be overinterpreted.

## Engineering and analytical considerations

- Kept the target label separate from the features to avoid target leakage.
- Used scaling for numeric features and one-hot encoding for nominal categories.
- Made t-SNE's random seed, initialization, learning rate, and perplexity explicit.
- Added input validation and automated tests for preprocessing and embedding shapes.
- Kept the original course notebook, data file, and serialized pickle outputs out of the public repository.

## Tools

Python · pandas · NumPy · scikit-learn · PCA · t-SNE · pytest

## Code and review

The independently written implementation and detailed review are maintained in a private repository during portfolio review. The public summary describes the methods and qualified exploratory results without distributing the original course materials.

## Limitations

This is an unsupervised visualization exercise, not a predictive model. Results depend on preprocessing and hyperparameters. The independent implementation uses one-hot encoding and numeric standardization, so its results are not claimed to reproduce the original assignment notebook exactly.

---

*Portfolio project summary. Results are exploratory and are not a claim of model performance or scientific inference beyond this dataset and configuration.*

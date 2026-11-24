import pandas as pd
import sklearn.datasets as sd

# Read the mushroom dataset.
df = pd.read_csv("agaricus-lepiota.data", header=None)
print(df)

# Map the two class labels to numeric values.
class_labels = df[0].unique()
print("The class labels are:", class_labels)

class_label_map = {
    class_labels[0]: "0",
    class_labels[1]: "1"
}

new_class_labels = df[0].map(class_label_map)
print(new_class_labels)

new_df = pd.DataFrame()
new_df[0] = new_class_labels

# One-hot encode categorical attributes, excluding column 11.
col = 1
for i in range(1, len(df.columns)):
    if i != 11:
        encoded = pd.get_dummies(df[i])
        for column in encoded.columns:
            new_df[col] = encoded[column]
            col += 1

print(new_df)

# Export feature matrix and labels in LIBSVM format.
class_labels = new_df[0]
train_data = new_df.iloc[:, 1:len(new_df.columns)]
sd.dump_svmlight_file(
    train_data,
    class_labels,
    "mushroom_prep.libsvm",
    False
)

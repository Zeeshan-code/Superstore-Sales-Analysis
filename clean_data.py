import pandas as pd

df = pd.read_csv('superstore.csv', encoding='latin1')

# Check the data
print(df.shape)        # how many rows & columns
print(df.dtypes)       # data types
print(df.isnull().sum()) # any missing values?

# Fix date columns
df['Order Date'] = pd.to_datetime(df['Order Date'])
df['Ship Date'] = pd.to_datetime(df['Ship Date'])

# Add useful columns
df['Order Year'] = df['Order Date'].dt.year
df['Order Month'] = df['Order Date'].dt.month
df['Profit Margin'] = (df['Profit'] / df['Sales']) * 100

# Save cleaned data
df.to_csv('superstore_clean.csv', index=False)
print("Done! Cleaned file saved.")
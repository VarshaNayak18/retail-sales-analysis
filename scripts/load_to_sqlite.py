import pandas as pd
import sqlite3

# Load dataset
df = pd.read_csv("data/superstore.csv", encoding="latin1")

# Connect to database
conn = sqlite3.connect("sales.db")

# Load data into database
df.to_sql("sales", conn, if_exists="replace", index=False)

print("Data loaded into SQLite Database")
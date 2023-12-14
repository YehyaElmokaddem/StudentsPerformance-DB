import sqlite3
import pandas as pd

# Load the dataset
df = pd.read_csv('./StudentsPerformance.csv')

# Connect to SQLite database
conn = sqlite3.connect('dashboard-db.db')

# Convert the column names to match the table column names
df.columns = [column.replace(" ", "_").lower() for column in df.columns]

# Import data into the database
df.to_sql('students_performance', conn, if_exists='replace', index=False)

# Close the connection
conn.close()

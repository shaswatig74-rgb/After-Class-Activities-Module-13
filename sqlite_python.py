import sqlite3
import pandas as pd

conn = sqlite3.connect('basketball.sqlite')
tables = pd.read_sql("""SELECT *
    FROM sqlite_master
    WHERE type = 'table';""", conn)
conn.close()
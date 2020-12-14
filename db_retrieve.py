'''
Write python code to retrieve the same records
'''



'''
pip install mysql-connector-python for connecting python with SQL database
'''
import mysql.connector

'''
create a connetion to the MYSQL database
'''
db_conn = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database="store"
)

'''
use the connetion to connect to database and execute the query
'''
cursor = db_conn.cursor()
#query1
cursor.execute("select * from product")
data = cursor.fetchall()

'''
fetch the result of query
'''
print("List of products in the store")
for row in data:
    print(row)
print("\n")

#query2
cursor.execute("select product_id, product_name from product where quantity = 15")
data = cursor.fetchall()
print("List of products with quantity=15")
for row in data:
    print(row)
print("\n")

#query3
cursor.execute("select count(product_id) as prod_count from product where price < 100")
data = cursor.fetchone()
print("Count of products with price less than $100")
if data is not None:
    result = data[0]
print(result)
print("\n")

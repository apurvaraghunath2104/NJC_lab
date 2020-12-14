'''
pip install Flask
pip install pymysql
pip install flask-mysql

'''

from flask import Flask
import pymysql
from app import app
from flask import render_template, request, flash, redirect, jsonify
from conn import mysql
import json
from decimal import Decimal
import decimal


class DecimalEncoder(json.JSONEncoder):
    def default(self, o):
        if isinstance(o, decimal.Decimal):
            return float(o)
        return super(DecimalEncoder, self).default(o)


#list all the products from product table
@app.route('/')
@app.route('/select', methods=['GET'])
def list():
    try:
        conn = mysql.connect()
        cur = conn.cursor(pymysql.cursors.DictCursor)
        cur.execute("select product_id,product_name,quantity,price from product")
        rows = cur.fetchall()
        res = json.dumps(rows, cls=DecimalEncoder)
        return res
    except Exception as e:
        print(e)
    finally:
        cur.close()
        conn.close()


#list all products that have a specified quantity
@app.route('/quantity/<quan>', methods=['GET'])
def get_quantity(quan):
    try:
        conn = mysql.connect()
        cur = conn.cursor(pymysql.cursors.DictCursor)
        cur.execute("select product_id, product_name from product where quantity = " +quan)
        rows = cur.fetchall()
        res = jsonify(rows)
        return res
    except Exception as e:
        print(e)
    finally:
        cur.close()
        conn.close()

#list all products that are priced less than particular amount
@app.route('/price/<price>', methods=['GET'])
def get_price(price):
    try:
        conn = mysql.connect()
        cur = conn.cursor(pymysql.cursors.DictCursor)
        cur.execute("select count(product_id) as prod_count from product where price <" +price)
        rows = cur.fetchall()
        res = jsonify(rows)
        return res
    except Exception as e:
        print(e)
    finally:
        cur.close()
        conn.close()


if __name__ == "__main__":
    app.debug = True
    app.run()

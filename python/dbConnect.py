
import mysql.connector
import sys
import os
import time

hostname = sys.argv[1]
username = 'root'
password = 'admin123'
database = 'sys'


def dbQuery(conn):
    cur = conn.cursor()

    cur.execute("SELECT * FROM Peoples")

    for firstname, lastname, address, city in cur.fetchall():
        print firstname, lastname, address, city


print "Using mysql.connector"

myConnection = mysql.connector.connect(
    host=hostname, user=username, passwd=password, db=database)
dbQuery(myConnection)
myConnection.close()

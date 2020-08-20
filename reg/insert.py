#!C:/python34/python
import cgi
import mysql.connector
print("Content-type: text/html")
print("")


form=cgi.FieldStorage()

i=form.getvalue("name");

n=form.getvalue("email");

e=form.getvalue("username");

p=form.getvalue("pass");


cnx = mysql.connector.connect(user='root', password='',
                              host='localhost',
                              database='stock')
cursor=cnx.cursor()
cursor.execute("""
    INSERT INTO reg VALUES (%s, %s, %s, %s)""", (i, n, e, p))
print("<script>alert('Inserted')</script>")
cnx.commit()
cnx.close()

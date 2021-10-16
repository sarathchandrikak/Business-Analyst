import mysql.connector as mysql
from pprint import pprint

db = mysql.connect(host="localhost", user="root", password="pass123", database="FIFA", auth_plugin='mysql_native_password')
mycursor = db.cursor()

mycursor.execute("select * from players limit 10")
result = mycursor.fetchall()
pprint(result)

create_cmd = '''
        create table Contacts (Name varchar(255), PhoneNUmber int(12))
'''
pprint(create_cmd)

mycursor.execute(create_cmd)

insert_cmd = '''
        insert into Contacts (Name, PhoneNumber) values(%s, %s)
'''
val = ("Sara", 234567891)
mycursor.execute(insert_cmd, val)
db.commit()


mycursor.execute("select name from Players where Nationality = 'United States'")
result = mycursor.fetchall()

pprint(result)

mycursor.execute("create index name_1 on Contacts(name);")
db.commit()

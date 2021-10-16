# Connecting to MySQL DB using Python

To connect MySQL to Python mysql-connector-python package is used. 

`conda install mysql-connector-python` or `pip install mysql-connector-python`. 

It is advisable to have python=3.6 for successful installation. 

Following commands are used to perform different operations on the data base. 

### Connecting to MySQL DB

```{python}
import mysql.connector as mysql
from pprint import pprint

db = mysql.connect(host="localhost", user="root", password="xxxxxxx", database="FIFA", auth_plugin='mysql_native_password')
mycursor = db.cursor()
```

### Creating a Table

```{python}
create_cmd = '''
        create table Contacts (Name varchar(255), PhoneNUmber int(12))
'''
pprint(create_cmd)

mycursor.execute(create_cmd)
```

### Inserting Values into Table

```{python}
insert_cmd = '''
        insert into Contacts (Name, PhoneNumber) values(%s, %s)
'''
val = ("Sara", 234567891)
mycursor.execute(insert_cmd, val)
db.commit()
```

### Searching for certain values

```{python}
mycursor.execute("select name from Players where Nationality = 'United States'")
result = mycursor.fetchall()

pprint(result)
```

### Creating Index

```{python}
mycursor.execute("create index name_1 on Contacts(name);")
db.commit()
```



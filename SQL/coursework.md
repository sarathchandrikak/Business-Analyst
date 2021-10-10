# 📍 Creating and Modifying Database and Tables

* Create a database named JobPortal.

  `CREATE database JobPortal;`

* View all the databases present in the logged account.

  `SHOW databases;`

* To use a particular database. SQL command to use JobPortal database.

  `USE JobPortal;`
  
* Create a table UserDetails. 
  * To create a table, two components are required. 
    1. Structure
    `CREATE table UserDetails(Name text, Designation text, Salary int);`
    2. Insert
    `INSERT INTO UserDetails (Name, Designation, Salary) VALUES ("Parul", "Data Scientist", 10);` 
    `INSERT INTO UserDetails (Name, Designation, Salary) VALUES ("Shreya", "Marketing Head", 40);`
  
* List all the tables available in the database.

  `SHOW tables;`
  
* List all the records of a table.
 
  `SELECT * from UserDetails;`
  
 # 📍 Modifying Database Structures
 
 * Update - Used to update the existing data based on the given conditions. 
    * Syntax - update table_name set column_name = new_value where [condition]
     
     `UPDATE UserDetails SET Designation = "Senior Data Scientist" AND Salary = 15 WHERE name = Parul;`  
     
 * Delete - Used to delete the existing data.
    * Syntax - delete from table_name where [condition]. If where clause is not used, all the records from table gets deleted. 

    `DELETE FROM UserDetails WHERE Designation = Marketing Head`
    
 * Table Structure - To get to know the table structure, two commands are available.
    1. Describe - Provides the schema of the table
    2. Show Create table table_name - Provides the query which is used to recreate the table schema. 
    
    * Syntax:
      * DESCRIBE UserDetails; or DESC UserDetails;
      * SHOW CREATE TABLE UserDetails; 

 * Alter - Used to alter the existing table. For example, If an extra column needs to be added.
    
    `ALTER table UserDetails ADD COLUMN Experience int(3);` 
    
    After creating a new column, it fills with null values. Alter command can also be used in many situations as follows. 
    
    * `ALTER table UserDetails CHANGE COLUMN Experience Exp int(3);`
    * `ALTER table UserDetails MODIFY Exp int(10);`
    * `ALTER table UserDetails DROP COLUMN Exp;`
    
    













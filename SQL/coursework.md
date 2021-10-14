# SQL 

This file is dedicated to the SQL coursework by Analytics Vidhya. Following are the modules and concepts discussed. 

# 📍 Introduction

  

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
  
* Drop database
  `DROP database JobPortal;`
  
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

 # 📍 Importing and Exporting data
 
 * Commands to import data from csv to MySQL and vice versa. 
    * Importing data 
      * `LOAD DATA local infile "filepath" INTO TABLE UserDetails COLUMNS terminated by "," optionally enclosed by "'" ignored 1 lines;`
    * Exporting data
      * `SELECT * INTO outfile "filepath" FIELDS terminated by "," optionally enclosed by "'" lines terminated by "\n" from UserDetails;`

 # 📍 Backup and Restoring Database
 
 * Both the operations has to be executed after coming out of MySQL shell. 
    * Database Backup
      * `mysqldump -uroot -p JobPortal > JobPortal.sql` 
    * Table Backup 
      * `mysqldump -u root -p JobPortal UserDetails > UserDetails.sql`
    * Restoring Database - Before restoring database, MySQL expects to create a blank database and restore data into it, else it throws an error.
      * `mysql -uroot -p JobPortal < JobPortal.sql`
  
   # 📍 Data Analysis
   
   ### * Counting rows and items
   * Number of items in the Database
      * `SELECT COUNT(*) FROM UserDetails` 
   * Distinct items of Salary 
      * `SELECT DISTINCT Salary FROM UserDetails`
   * Number of distinct values
      * `SELECT COUNT(DISTINCT Salary) FROM UserDetails`
   
   ### * Aggregate Functions  
   
   * Sum of Salary
      * `SELECT SUM(Salary) as Total Salary FROM UserDetails`
   * Average of Salary
      * `SELECT AVG(Salary) as Average Salary FORM UserDetails`
   * Standard Deviation
      * `SELECT STDDEV(Salary) FROM UserDetails`
   * Max Value 
      * `SELECT MAX(Salary) FROM UserDetails`
   * Min Value 
      * `SELECT MIN(Salary) FROM UserDetails`
   * Operators used for slicing the data
      * IN, NOT IN, <>, BETWEEN         
   * Operators used for Limiting the data
      * LIMIT - Limits the number of records
      * OFFSET - Used as pointer from where to start  
   * Operators used for sorting the data
      * Order by ASC, DESC
   * To find person who earns the most in the company
      * `SELECT Name from UserDetails ORDER BY Salary DESC LIMIT 1;`
   * Operators used of Filtering the data
      * Find the names whose starting letter is S
          * `SELECT Name from UserDetails where Name like "s%";`
      * Find the sum of salaries whose name ends with A
          * `SELECT SUM(Salary) from UserDetails where Name like "%a";`
      * Find the sum of salaries whose name contain I
          * `SELECT SUM(Salary) FROM UserDetails where Name like "%i%";`  
      * Find the employees whose third character is r
          * `SELECT Name FROM UserDetails where Name like "__r%";`
    * Group By, Rolling Up data and Filtering in Groups
      * Find the number of employees from each department
          * `SELECT DEPARTMENT, COUNT(*) FROM UserDetails GROUP BY Department;`
      * Find the sum of salaries of employees of each department
          * `SELECT DEPARTMENT, SUM(Salary) FROM UserDetails GROUP BY Department;`
      * Find the departments whose salary is greater than 100 
          * `SELECT DEPARTMENT, SUM(Salary) as total_salary FROM UserDetails GROUP BY Department having total_salary > 100;`
      * Find the number of employees from each department
          * `SELECT DEPARTMENT, COUNT(*) FROM UserDetails GROUP BY Department;`
       
       
      `SELECT SUM(Salary) as total_salary, AVG(Salary) as average_salary, stddev(Salary) as std_salary, Department FROM UserDetails WHERE Department = "Strategy" GROUP BY Department HAVING total_salary > 100 ORDER BY total_salary DESC;`
       
                    
    













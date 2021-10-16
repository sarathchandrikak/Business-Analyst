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
       
 # 📍 Joins
 
 * Joins helps to get data from multiple tables using a single query. Following are the different types of joins. 
    * Left Join - All records from the Left table and only the corresponding matching records from the right table will be displayed.
      * Syntax: SELECT Table1.a, Table2.b from Table1 LEFT JOIN Table2 on Table1.key = Table2.key   
    * Inner Join - Returns the records that are common between two tables. 
      * Syntax: SELECT Table1.a, Table2.b from Table1 INNER JOIN Table2 on Table1.key = Table2.key    
    * Right Join - All records from the Right table and only the corresponding matching records from left table will be displayed.  
      * Syntax: SELECT Table1.a, Table2.b from Table1 RIGHT JOIN Table2 on Table1.key = Table2.key     
    * Cartesian Join or Cross Join - All the records from both tables will be displayed. 
      * Syntax: SELECT Table1.a, Table2.b from Table1 CROSS JOIN Table2
    * Self Join - Applying join on the same table. It is mostly used while creating a pair wise lists. 
      * Syntax: SELECT U.a, V.b FROM TABLE as U (Inner/Left/Right) join table as V on U.key = V.key
  
 # 📍 Index and Indexing
 
 * Index - A datastructure that improves the speed of operations in a table. 
 * It is used to improve the search time. But it can also increase the time for insert and update.
 * It can be created using one or all columns. 
 * Composite Index is used to create indexes for multiple columns.
 * Syntax: Create INDEX <Index_Name> ON TableNmae (Column Name), CREATE INDEX Name_Composite ON TableName(Column1, Column2)
 * It uses B-trees for searching the records.

 # 📍 Relationships
  
 * Relationships form the key ingredients of SQL while combining data from multiple tables.
 * There are 3 types of Relationships. They are:
    * One-One relationship 
      * One record in first table should be matched with only one record in second table.
      * It is modeled using PRIMARY Key and Uniqueness Constraint. 
    * One - Many Relationship
      * One record in first table can be matched with multiple records in the second table.
      * It is modeled using Foreign Key
    * Many - Many Relationship
      * Multiple records in first table can be matched with multiple records in the second table.
      * It is also modeled using Foreign Key constraint. 

 # 📍 Table Constraints
 
 * Primary Key - It is the unique key that defines the table.
 * Foreign Key - It is a Key from another table. 
 * Uniqueness - It doesn't allow duplicate values. 
 * Auto Increment - It is handled by MySQL Engine to increment automatically.

 # 📍 MySQL Built in Functions
 
 * Concat - Used to concat two fields from the table
      * `SELECT CONCAT(Name, "|",  Nationality) FROM Players;`
 * Case Conversion 
      * `SELECT UCASE(Nationality) FROM Players;` => Display the results in upper case
      * `SELECT LCASE(Nationality) FROM Players;` => Display the results in lower case
 * Trimming Strings
      * Trimming in the sense remove starting and trailing spaces.
      * `SELECT LTRIM("  Hello") FROM Players LIMIT 10;` => Removes all the spaces in the front. 
      * `SELECT RTRIM("Hello   ") FROM Players LIMIT 10;` => Removes all the spaces at the end.
      * `SELECT TRIM("  Hello   ") FROM Players LIMIT 10;` => Removes spaces both in the front and the end.   
 * Slicing or Substrings from a string
      * `SELECT LEFT(Name, 2) FROM PLayers;` => Display the first two characters of Names of Players.
      * `SELECT RIGHT(Name, 2) FROM Players;` => Display the last two characters of Names of Players.
      * `SELECT SUBSTRING(Name, 2, 5) FROM Players;` => Extract the substring of length 5 starting from 2nd position.
 * Date and Time Functions
      * NOW() => Used to get current date and time. `SELECT NOW() FROM Players LIMIT 1;`
      * For accessing the current date and time separately, CURDATE() and CURTIME() Functions are used. 
          * `SELECT CURDATE(), CURTIME() FROM Players LIMIT 1;`
          * 'SELECT CURDATE(), CURTIME(), UNIX_TIMESTAMP() FROM Players LIMIT 1;`
      * To just get the date from the field, DATE() Function can be used.
          * 'SELECT DATE(Joined) FROM Players LIMIT 10;`       
          * 'SELECT DATE(Joined), MONTH(Joined), DAY(Joined), YEAR(Joined) FROM Players LIMIT 10;`
      * For Formatting date as per our needs date_format() function is used. 
         * 'SELECT Joined, DATE_FORMAT(joined, "%d%m%y") as formatted_date FROM Players LIMIT 10;`
 * Numeric Functions 
    * ROUND() -> Rounds up the value to the nearest integer. 
         * `SELECT ROUND(Value\wage) FROM Players LIMIT 10;`
    * FLOOR() -> Rounds down the value to the nearest integer less than the given integer. 
        * `SELECT FLOOR(value\wage) FROM Players LIMIT 10;`
    * CEILING() -> Rounds up the value to the nearest integer right nore than given integer. 
        * `SELECT CEILING(value\wage) FROM Players LIMIT 10;` 
    * TRUNCATE() -> Truncates the given number to specific number of decimal places. 
        * `SELECT TRUNCATE(value\wage, 2) FROM Players LIMIT 10;`
    *  ABS() ->  Used to get positive value or magnitude of negative numbers.         
 

 # 📍 MySQL connection with Python
 
   *  Connection is established with the help of mysql-connector or mysql-connector-python package.
   *  Refer [here](https://github.com/sarathchandrikak/Business-Analyst/blob/main/SQL/MySQL-Python-Connection.md) for complete code of coneecting to DB using python.


    












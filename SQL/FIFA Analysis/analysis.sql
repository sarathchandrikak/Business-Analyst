--Create Database 

CREATE database FIFA;

--Navigate to Database in MySQL

USE FIFA;

--Create Table to store the details

CREATE TABLE players ( 
  ID int, 
  name varchar(255), 
  age int(3), 
  nationality varchar(255), 
  overallrating int, 
  potentialrating int,  
  club varchar(255), 
  value int, 
  wage int, 
  preferredfoot ENUM("Left", "Right"), 
  jerseynumber int, 
  joined datetime,  
  height varchar(10), 
  weight int(3), 
  penalties int(3));
  
--Load data from CSV file to MySQL DB

Load data 
local infile "/Users/sarathchandrikak/Documents/fifa19.csv" 
INTO TABLE players 
CHARACTER SET latin1 
columns terminated by "," 
optionally enclosed by "'" 
ignore 1 lines;

--Find Total number of Players. 

SELECT COUNT(*) FROM Players;

--Find the different number of nationalities. 

SELECT COUNT(DISTINCT Nationality) FROM Players;

--Find the top three Nationalities. 

SELECT COUNT(*) AS FREQ, Nationality FROM Players GROUP BY Nationality ORDER BY FREQ DESC LIMIT 3;

--Find the Player with highest wage.

SELECT Name FROM Players WHERE Wage = (SELECT MAX(wage) FROM Players);

--Find the minimum wage of the Players.

SELECT MIN(wage) FROM Players;

--Find the player with Mazimum Rating.

SELECT Name FROM Players WHERE Overallrating = (SELECT MAX(Overallrating) FROM Players);

--Find the club with highest rating.

SELECT SUM(overallrating) AS total_rating, club FROM Players GROUP BY club ORDER BY total_rating DESC LIMIT 1; 

--Find the best club with highest average rating. 

SELECT AVG(overallrating) as average_rating, club FROM Players GROUP BY club ORDER BY average_rating DESC LIMIT 3;

--What is the distribution of players whose preffered foot is Left vs Right?

SELECT COUNT(*) as Freq, Preferredfoot FROM Players GROUP BY preferredfoot ORDER BY Freq;

--Which Jersey Number is Lucky?

--Assuming that Person having highest total wage is lucky

SELECT SUM(wage) AS Total_wage, jerseynumber FROM Players GROUP BY jerseynumber ORDER BY Total_wage DESC LIMIT 1;

--Find the players who has joined in the clubs in the date range 

SELECT COUNT(*) FROM Players WHERE joined >= "2018-05-20" AND joined <= "2019-04-10";

--Find the number of players who joined the clubs year wise

SELECT COUNT(*) AS FREQ, YEAR(joined) FROM Players GROUP BY YEAR(joined);






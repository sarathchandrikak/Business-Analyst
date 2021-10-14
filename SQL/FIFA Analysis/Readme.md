# 📍 Descriptive Analysis of FIFA Players

## 📍 Data Eyeballing
      * Examining the data
      * Data is player level data that contains details of the players containing 16000 rows and 15 columns.
      * Following are the attributes in the dataset. 
          * Name, Age, Nationality, Rating, Club, Value, Wage, Preferred Foot, Jersey Number, Date Joined, Height, Weight and Penalities
      * Observe the range of data and check for the data type of all the columns. It can be used while creating a DB. 
## 📍 Data Dictionary
      * Data Dictionary helps us to understand the contents, structure and format of the data. 
      * It describes the each column of the dataset. Following are the data descriptions for each and every column.
            * ID: Unique Identification of the player (Int(11))
            * Name: Name of the Player (Varchar(255))
            * Age: Age of the Player (Int(3))
            * Nationality: Players Nationality (varchar(255))
            * Overall: Overall Rating of the Player (Int(11))
            * Potential: Potential Rating of the Player (Int(11))
            * Club: Club name to which the Player belongs (varchar(255))
            * Value: Current market value of the Player in Euros (Int(11))
            * Wage: Current wage of the Player (Int(11))
            * Preferred Foot: Preferred Foot for Playing (enum('Left', 'Right'))
            * Jersey NUmber: Jersey Number of the Player (Int(11))
            * Joined: Joining date when the player joined the particular club (date)
            * Height: Height of the player in feet and inches (varchar(10))
            * Weight: Weight of the player in pounds (Int(3))
            * Penalities: Rating on 100, how good the player is on penalities (Int(3))
## 📍 Data Questions 
      * Right questions depend on the business intution. 
      * What questions to ask that boost up the business?
      * Following are the set of questions that can be framed on FIFA dataset.
        * How many players are theere in the dataset?
        * How many nationalties do the players belong to? 
        * Which nationality has the highest number of players? 
        * What are the top 3 nationalities by number of players?
        * What is the total wage given to all the players? What's the average and standard deviation?
        * Which player has the highest wage? Who has the lowest? 
        * Which player has the best and worst overall rating?
        * Which is the best club based on the highest overall rating or highest average of overall rating of players belonging to the club?
        * What is the distribution of the player who preferred left foot vs right foot?
        * Which jersey number is the luckiest? 
            * How do you define lucky?
              * It can be defined based on the wage, overall rating and potential rating. 
        * How many players have joined their respective clubs in the particular data range?
        * How many players have joined their respective clubs data wise?
        * How many players have joined their respective clubs yearly? 
## 📍 Analysing the data and creating a table structure for MySQL
      * Check the datatypes of columns of csv file which further helps in table creation in MySQL. 
## 📍 Loading data into SQL, Analysing and Querying 
      * Refer [here]{https://github.com/sarathchandrikak/Business-Analyst/blob/main/SQL/FIFA%20Analysis/analysis.sql} for the queries on database creation and loading the data to SQL. 

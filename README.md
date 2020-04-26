# IPL-Tournament2019

## About the project:
This project is about implementing web application of most loved tournament - Indian premier league. A web api has been implemented to help the user to find details about matches, teams, players etc.

## Technologies USed:
* Flask (Python based web framework)
* Microsoft azure services for databases
* MySQl
* HTML/ CSS

## Setup:
1. Download the git repository or clone it (https://github.com/agarwalr98/IPL-Tournament2019.git)
2. Use below to setup a database at your local system.<br/>
**Note** (I have used Microsoft azure database services-MySQL).
3. In app.py, Change the fields like MYSQL_HOST, MYSQL_USER, MYSQL_PASSWD and MYSQL_DB to the one you have configured.<br/>
**Note** If you are running database on your system then following fileds should be -
- MYSQL_HOST = "localhost"
- MYSQL_USER = "root"
- MYSQL_PASSWD = "your password"
- MYSQL_DB = "Name of database"

## Database:
### MySQL Commands:
```
Create database <database-name>
use <database-name>
```
```
create table Matches(date date, time time, home_team VARCHAR(50) NOT NULL, visitor_team VARCHAR(50) NOT NULL, venue VARCHAR(50)  NOT NULL, matchno INT NOT NULL, Winner VARCHAR(100) NOT NULL, PRIMARY KEY(date, time));
```
![Schema Table](/images/DESC-Table.png)


```

load data local infile 'Path to IPLTournament-Sheet1.txt file' into table matches fields terminated by ',' enclosed by '"'  lines terminated by '\n' (date, time, home_team, visitor_team, venue, matchno, Winner);
```


## Author Details
**Email** - agarwal.r1998@gmail.com
**Phone** - +91 9079881099


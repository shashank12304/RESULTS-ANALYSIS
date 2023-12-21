# RESULTS-ANALYSIS

## ABOUT

This project aims to explore students' results to understand the top-performing students from various sections and comprehend the performance of students in various subjects. The goal is to study how students can be improved and optimized in various subjects. The dataset was obtained from our college website (https://sreenidhi.edu.in/examination-updates/#1654684977838-a5ca1dad-0c46).

To analyze the results of students, you can use MYSQL queries. MySQL queries are statements written in the MySQL language (Structured Query Language) to interact with a MySQL database. MySQL is a popular open-source relational database management system (RDBMS) that uses SQL for querying and managing the data. It requires careful planning from the very start of the research process. You need to specify your hypotheses and make decisions about your research design, sample size, and sampling procedure. After collecting data from your sample, you can organize and summarize the data using statistics.

## PURPOSE OF THE PROJECT

The major aim of the project is to understand the  top-performing students from various sections and comprehend the performance of students in various subjects.

## About Data
| Column                  | Description                             | Data Type      |
| :---------------------- | :-------------------------------------- | :------------- |
| SNo                     |          NUMBER OF STUDENTS             |      INT       |
| ROLLNO                  |                ROLLNO                   |      TEXT      |
| STUDENTNAME             |           NAME OF STUDENTS              |      TEXT      |
| AWP30                   |               INTERNAL                  |      INT       |
| AWP70                   |               EXTERNAL                  |      INT       |               
| CMC30                   |               INTERNAL                  |      INT       |
| CMC70                   |               EXTERNAL                  |      INT       |
| CS30                    |               INTERNAL                  |      INT       |                 
| CS70                    |               EXTERNAL                  |      INT       |                 
| DSP30                   |               INTERNAL                  |      INT       |                
| DSP70                   |               EXTERNAL                  |      INT       |                
| MM30                    |               INTERNAL                  |      INT       |                 
| MM70                    |               EXTERNAL                  |      INT       |                 
| VTD30                   |               INTERNAL                  |      INT       |                
| VTD70                   |               EXTERNAL                  |      INT       |                
| MMLAB30                 |               INTERNAL                  |      INT       |              
| MMLAB70                 |               EXTERNAL                  |      INT       |              
| PPLAB30                 |               INTERNAL                  |      INT       |              
| PPLAB70                 |               EXTERNAL                  |      INT       |               
| SII30                   |               INTERNAL                  |      INT       |                
| SII70                   |               EXTERNAL                  |      INT       |                
| VTDLAB30                |               INTERNAL                  |      INT       |             
| VTDLAB70                |               EXTERNAL                  |      INT       |             
| Credits                 |          CREDITS OF SUBJECTS            |      INT       |              
| Backlogs                |               BACKLOGS                  |      INT       |            
| SGPA                    |                SGPA                     |     DOUBLE     |


##CODE

For the rest of the code, check the [SQL_queries.sql]() file
```sql
-- Create database
CREATE DATABASE IF NOT EXISTS walmartSales;

-- Create table
CREATE TABLE IF NOT EXISTS exam-results-3-1_compressed (1)(
SNo int 
ROLLNO text 
STUDENTNAME text 
AWP30 int 
AWP70 int 
CMC30 int 
CMC70 int 
CS30 int 
CS70 int 
DSP30 int 
DSP70 int 
MM30 int 
MM70 int 
VTD30 int 
VTD70 int 
MMLAB30 int 
MMLAB70 int 
PPLAB30 int 
PPLAB70 int 
SII30 int 
SII70 int 
VTDLAB30 int 
VTDLAB70 int 
Credits int 
Backlogs int 
SGPA double 
TOTAL int 
section varchar(1)
);
```

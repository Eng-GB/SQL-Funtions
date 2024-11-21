

Title
Using MySQL Functions and Queries for Data Manipulation and Retrieval

Introduction
This guide demonstrates the use of MySQL queries and functions to manipulate and retrieve data efficiently. The examples provided use a sample database containing students, address, and responsible tables. Key topics covered include string manipulation, date and time functions, and joining tables to merge data for meaningful analysis.

Body
1. Selecting Data
To retrieve all columns from the students table:

SELECT * FROM students;  
2. String Manipulation Functions
Concatenating Columns
Combine multiple columns into a single string for better readability

SELECT CONCAT(name, ' ', tell, ' ', sex) AS info, birth, res_id FROM students;  

Changing Case
Convert text to uppercase
SELECT UPPER(name), tell, sex FROM students;  

Convert text to lowercase:
SELECT LOWER(name), tell, sex FROM students;  

SELECT LOWER(name), tell, sex FROM students;  
Conditional String Creation
Display details for female students with a custom message:


SELECT CONCAT("Name: ", name, " Dhashay: ", birth) AS Info, tell, sex FROM students WHERE sex = 'female';  
Padding Strings
Left padding (LPAD) to adjust the width of text:


SELECT CONCAT("Name: ", LPAD(name, 20, ".")) AS Magac FROM students;  
SELECT LPAD(sex, 25, "??") FROM students;  
SELECT CONCAT("Sex: ", LPAD(sex, 25, "  ")) FROM students;  
Right padding (RPAD) for similar purposes:


SELECT CONCAT("Name: ", RPAD(name, 40, ".")) AS Magac FROM students;  
Substring Extraction
Retrieve the first two characters of the name:
SELECT SUBSTRING(name, 1, 2) AS Magac, tell, sex, birth FROM students;  

3. Date and Time Functions
Retrieve the current date and time:
SELECT CURDATE() AS tariikh, CURTIME() AS saacad, NOW();  
Extract specific parts of the timestamp:
SELECT CURDATE() AS Date;  
SELECT CURTIME() AS Time;  
SELECT DATE(NOW());  
SELECT TIME(NOW());  


4. Joining Tables
Inner Join
Retrieve student information along with their address:

SELECT name, tell, sex, district, village, area  
FROM address a  
JOIN students s ON a.add_id = s.add_id;  
Join students with their responsible person’s details:


SELECT name, tell, sex, res_name, res_tell  
FROM responsible r  
JOIN students s ON r.res_id = s.id;  
Cross Join with Filters
Combine student, address, and responsible person details:

SELECT name, tell, sex, birth, CONCAT(district, ' ', village, ' ', area) AS deegaan,  
       CONCAT(res_name, ' ', res_tell) AS responsible  
FROM address a, students s, responsible r  
WHERE a.add_id = s.id AND r.res_id = s.id;  


Summary
This guide has introduced various MySQL functions and queries to handle data efficiently, including:

String manipulation for text processing.
Using date and time functions for temporal data.
Joining tables to create comprehensive datasets.
These techniques are vital for building flexible, readable, and efficient queries. By practicing these queries, you can enhance your skills in MySQL for data management and analysis.







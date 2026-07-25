mysql> -- Create Database
mysql> CREATE DATABASE college_db;
ERROR 1007 (HY000): Can't create database 'college_db'; database exists
mysql>
mysql> -- Show Databases
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| collage_db         |
| college_db         |
| employee_db        |
| information_schema |
| mysql              |
| performance_schema |
| student_db         |
| sys                |
+--------------------+
8 rows in set (0.01 sec)

mysql>
mysql> -- Use Database
mysql> USE college_db;
Database changed
mysql>
mysql> -- Check Current Database
mysql> SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| college_db |
+------------+
1 row in set (0.00 sec)

mysql>
mysql> -- Create Student Table
mysql> CREATE TABLE STUDENT (
    ->     StudentID INT PRIMARY KEY,
    ->     Name VARCHAR(50),
    ->     Age INT,
    ->     Gender VARCHAR(10),
    ->     Department VARCHAR(10),
    ->     Semester INT,
    ->     City VARCHAR(50),
    ->     Marks INT
    -> );
ERROR 1050 (42S01): Table 'student' already exists
mysql>
mysql> -- Insert Records
mysql> INSERT INTO STUDENT
    -> (StudentID, Name, Age, Gender, Department, Semester, City, Marks)
    -> VALUES
    -> (101, 'Rahul', 20, 'Male', 'CSE', 4, 'Hyderabad', 85),
    -> (102, 'Priya', 21, 'Female', 'ECE', 5, 'Chennai', 90),
    -> (103, 'Adit', 19, 'Male', 'CSE', 3, 'Bengaluru', 78),
    -> (104, 'Sneha', 20, 'Female', 'EEE', 4, 'Hyderabad', 88),
    -> (105, 'Arjun', 22, 'Male', 'IT', 6, 'Pune', 92),
    -> (106, 'Kavya', 21, 'Female', 'CSE', 5, 'Vijayawada', 81),
    -> (107, 'Rohit', 20, 'Male', 'ECE', 4, 'Delhi', 75),
    -> (108, 'Neha', 19, 'Female', 'IT', 3, 'Mumbai', 89),
    -> (109, 'Kiran', 22, 'Male', 'ECE', 6, 'Hyderabad', 84),
    -> (110, 'Anjali', 20, 'Female', 'EEE', 4, 'Chennai', 95);
ERROR 1062 (23000): Duplicate entry '101' for key 'student.PRIMARY'
mysql>
mysql> -- Display Data
mysql> SELECT * FROM STUDENT;
+-----------+--------+------+--------+------------+----------+------------+-------+
| StudentID | Name   | Age  | Gender | Department | Semester | City       | Marks |
+-----------+--------+------+--------+------------+----------+------------+-------+
|       101 | Rahul  |   20 | Male   | CSE        |        4 | Hyderabad  |    85 |
|       102 | Priya  |   21 | Female | ECE        |        5 | Chennai    |    90 |
|       103 | Adit   |   19 | Male   | CSE        |        3 | Bengaluru  |    78 |
|       104 | Sneha  |   20 | Female | EEE        |        4 | Hyderabad  |    88 |
|       105 | Arjun  |   22 | Male   | IT         |        6 | Pune       |    92 |
|       106 | Kavya  |   21 | Female | CSE        |        5 | Vijayawada |    81 |
|       107 | Rohit  |   20 | Male   | ECE        |        4 | Delhi      |    75 |
|       108 | Neha   |   19 | Female | IT         |        3 | Mumbai     |    89 |
|       109 | Kiran  |   22 | Male   | ECE        |        6 | Hyderabad  |    84 |
|       110 | Anjali |   20 | Female | EEE        |        4 | Chennai    |    95 |
+-----------+--------+------+--------+------------+----------+------------+-------+
10 rows in set (0.00 sec)
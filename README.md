# College Attendance Management System

## Overview

The College Attendance Management System is a database project
developed using MySQL. It stores student information, subject
details, class sessions, and attendance records in related tables.

The project demonstrates relational database design and SQL-based
attendance analysis.

## Technologies Used

- MySQL
- Docker Desktop
- Beekeeper Studio
- SQL

## Database Structure

The database contains four tables:

1. Students – Stores student details.
2. Subjects – Stores subject and faculty information.
3. Class_Sessions – Stores subject-wise class session details.
4. Attendance – Stores student attendance records.

## Features

- Student and subject record management.
- Attendance tracking using relational tables.
- Student-wise attendance percentage calculation.
- Identification of students below 75% attendance.
- Subject-wise attendance summaries.
- Attendance analysis using SQL JOINs and aggregate functions.
- Reusable attendance reports using SQL views.
- Data integrity using primary keys, foreign keys, and constraints.

## SQL Concepts Demonstrated

- SELECT and filtering
- INSERT statements
- INNER JOIN
- GROUP BY and HAVING
- Aggregate functions
- CASE expressions
- Primary keys and foreign keys
- UNIQUE constraints
- Views

## Project Files

- `01_create_database.sql` – Creates the database.
- `02_create_tables.sql` – Creates relational tables.
- `03_insert_sample_data.sql` – Inserts sample data.
- `04_attendance_analysis.sql` – Contains analytical queries.
- `05_create_views.sql` – Creates reusable attendance views.

## How to Run

1. Start the MySQL container in Docker Desktop.
2. Connect to the database using Beekeeper Studio.
3. Execute the SQL files in numerical order.
4. Run the queries in `04_attendance_analysis.sql`.
5. Run the views in `05_create_views.sql`.

## Sample Data

The project uses fictional sample data for testing and demonstration.

## Learning Outcome

This project demonstrates practical understanding of relational
database design, SQL queries, joins, aggregate functions,
constraints, and database views.
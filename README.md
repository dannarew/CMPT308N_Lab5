# Lab 5: SQL Subqueries, Set Operations, and Normalization

**Author:** Daniel  
**Course:** CMPT308  

## Overview
This repository contains the deliverables for Lab 5. The assignment focuses on writing advanced SQL queries using subqueries and set operations, as well as applying database normalization principles (1NF through 3NF) and evaluating functional dependencies.

## Files Included
* `lab5.sql`: Contains all the SQL queries for Part A (IN, EXISTS, NOT EXISTS, UNION, INTERSECT, EXCEPT).
* `README.md`: This file, providing a brief overview and instructions.
* `Lab5_Submission.pdf`: Submitted via Brightspace. Contains screenshots of the SQL queries and their outputs from pgAdmin, alongside the typed written answers for Parts B, C, and D.

## What I Did
1. **Part A (SQL):** Wrote and tested 6 queries to extract specific enrollment data using `IN`, `EXISTS`, a safe `NOT EXISTS` structure, and set operations to compare result sets.
2. **Part B (Functional Dependencies):** Computed closures for a given relation and identified its candidate key.
3. **Part C & D (Normalization):** Redesigned unnormalized tables (`EnrollmentWide` and `CourseInstructor`) by identifying partial and transitive dependencies, ultimately decomposing them into 2NF and 3NF to resolve redundancy and update anomalies.

## How to Run the SQL
1. Open **pgAdmin** and connect to your local PostgreSQL server.
2. Ensure you are connected to the database containing the class tables (`Students`, `Courses`, `Enrollments`) with the provided lab data inserted.
3. Open the `lab5.sql` file in the pgAdmin Query Tool.
4. Highlight individual queries and click the **Execute/Refresh** button (or press `F5`) to run them one by one and view the output.

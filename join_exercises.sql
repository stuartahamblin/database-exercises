# EMPLOYEES DATABASE
# 1. Create a file named join_exercises.sql to do your work in.

# 2. Using the example in the Associative Table Joins section as a guide,
# write a query that shows each department along with the name of the
# current manager for that department.
# Department Name    | Department Manager
# --------------------+--------------------
# Customer Service   | Yuchang Weedman
# Development        | Leon DasSarma
# Finance            | Isamu Legleitner
# Human Resources    | Karsten Sigstam
# Marketing          | Vishwani Minakawa
# Production         | Oscar Ghazalie
# Quality Management | Dung Pesch
# Research           | Hilary Kambil
# Sales              | Hauke Zhang
USE employees;
show tables;
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT d.dept_name AS 'department name', concat(e.first_name, ' ', e.last_name) AS manager_name
FROM departments AS d
  JOIN dept_manager as dm
      ON dm.dept_no = d.dept_no
  JOIN employees AS e
      ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
ORDER BY d.dept_name;

# 3. Find the name of all departments currently managed by women.
# Department Name | Manager Name
# ----------------+-----------------
# Development     | Leon DasSarma
# Finance         | Isamu Legleitner
# Human Resources | Karsetn Sigstam
# Research        | Hilary Kambil
SELECT d.dept_name AS 'department name', concat(e.first_name, ' ', e.last_name) AS manager_name
FROM departments AS d
       JOIN dept_manager as dm
         ON dm.dept_no = d.dept_no
       JOIN employees AS e
         ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
AND e.gender LIKE 'F'
ORDER BY d.dept_name;

# 4. Find the current titles of employees currently working in the Customer Service department.
# Title              | Count
# -------------------+------
# Assistant Engineer |    68
# Engineer           |   627
# Manager            |     1
# Senior Engineer    |  1790
# Senior Staff       | 11268
# Staff              |  3574
# Technique Leader   |   241
    # SELECT * FROM titles;
    # SELECT * FROM dept_emp;
    # SELECT * FROM departments;
SELECT t.title as 'Title', count(*) as 'Count'
FROM titles AS t
JOIN dept_emp as de
ON de.emp_no = t.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
WHERE d.dept_name LIKE 'Customer Service'
AND t.to_date > NOW()
GROUP BY t.title;

# 5. Find the current salary of all current managers.
# Department Name    | Name              | Salary
# -------------------+-------------------+-------
# Customer Service   | Yuchang Weedman   |  58745
# Development        | Leon DasSarma     |  74510
# Finance            | Isamu Legleitner  |  83457
# Human Resources    | Karsten Sigstam   |  65400
# Marketing          | Vishwani Minakawa | 106491
# Production         | Oscar Ghazalie    |  56654
# Quality Management | Dung Pesch        |  72876
# Research           | Hilary Kambil     |  79393
# Sales              | Hauke Zhang       | 101987
# Bonus Find the names of all current employees, their department name, and their current manager's name.
#     240,124 Rows
#     Employee Name | Department Name  |  Manager Name
#     --------------|------------------|-----------------
#      Huan Lortz   | Customer Service | Yuchang Weedman

USE employees;
show tables;
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT d.dept_name AS 'department name', concat(e.first_name, ' ', e.last_name) AS manager_name, s.salary AS 'Salary'
FROM departments AS d
       JOIN dept_manager as dm
         ON dm.dept_no = d.dept_no
       JOIN employees AS e
         ON e.emp_no = dm.emp_no
       JOIN salaries AS s
         ON s.emp_no = e.emp_no
WHERE dm.to_date > NOW()
AND s.to_date > NOW()
ORDER BY d.dept_name;


# # -Create a file named where_exercises.sql. Make sure to use the employees database
# USE employees;
# # -Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# SELECT * FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# # -Find all employees whose last name starts with 'E' — 7,330 rows.
# SELECT * FROM employees
# WHERE last_name LIKE 'E%';
# # -Find all employees hired in the 90s — 135,214 rows.
# SELECT * FROM employees
# WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';   # could SELECT * FROM employees WHERE hire_date LIKE '199%';
# # -Find all employees born on Christmas — 842 rows.
# SELECT * FROM employees
# WHERE birth_date LIKE '%12-25';
# # -Find all employees with a 'q' in their last name — 1,873 rows.
# SELECT * FROM employees
# WHERE last_name LIKE '%Q%';
# # -Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
# SELECT * FROM employees
# WHERE first_name = 'Irena'
#   OR first_name = 'Vidya'
#   OR first_name = 'Maya';
# # -Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
# SELECT * FROM employees
# WHERE gender = 'M'
#   AND first_name = 'Irena'
#    OR gender = 'M'
#    AND first_name = 'Vidya'
#    OR gender = 'M'
#    AND first_name = 'Maya';
# # or could use
# # SELECT * FROM employees
# # WHERE (first_name = 'Irena'
# #    OR first_name = 'Vidya'
# #    OR first_name = 'Maya')
# #    AND gender = 'M';
# # -Find all employees whose last name starts or ends with 'E' — 30,723 rows.
# SELECT * FROM employees
# WHERE last_name LIKE 'E%'
#    OR last_name LIKE '%E';
# # -Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
# SELECT * FROM employees
# WHERE last_name LIKE 'E%E';
# # -Find all employees hired in the 90s and born on Christmas — 362 rows.
# SELECT * FROM employees
# WHERE hire_date LIKE '199%'
#   AND birth_date LIKE '%12-25';
# # -Find all employees with a 'q' in their last name but not 'qu' — 547 rows. ?????
# SELECT * FROM employees
# WHERE last_name LIKE '%q%'
#   AND last_name NOT LIKE '%qu%';


























# -Create a file named where_exercises.sql. Make sure to use the employees database
USE employees;
select * from employees;
# -Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
select first_name, last_name from employees where first_name in ('Irena', 'Vidya', 'Maya')
# -Find all employees whose last name starts with 'E' — 7,330 rows.
select last_name from employees where last_name like 'E%';
# -Find all employees hired in the 90s — 135,214 rows.


# -Find all employees born on Christmas — 842 rows.


# -Find all employees with a 'q' in their last name — 1,873 rows.


# -Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.




# -Add a condition to the previous query to find everybody with those names who is also male — 441 rows.







# or could use
# SELECT * FROM employees
# WHERE (first_name = 'Irena'
#    OR first_name = 'Vidya'
#    OR first_name = 'Maya')
#    AND gender = 'M';
# -Find all employees whose last name starts or ends with 'E' — 30,723 rows.



# -Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.


# -Find all employees hired in the 90s and born on Christmas — 362 rows.



# -Find all employees with a 'q' in their last name but not 'qu' — 547 rows. ?????




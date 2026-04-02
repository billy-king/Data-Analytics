-- Joins

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

-- Inner join - will only bring over the rows that have the same values in both columns that we're tying together

SELECT *
FROM employee_demographics
INNER JOIN employee_salary #JOIN implies Inner Join
	ON employee_demographics.employee_id = employee_salary.employee_id #tells what to base the join on.
; #this misses #2 because Ron Swanson isn't in the birthday sheet

SELECT * # Same thing as ^ just using aliasing to make it shorter.
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- Outer Joins
-- you have a left join and a right join. The left join takes everything from the left table even if no match and will only return matches from right. right join does the opposite.
SELECT * # Same thing as ^ just using aliasing to make it shorter.
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
; # Excludes Ron Swanson because he's not in the dem table (left table)

-- you have a left join and a right join. The left join takes everything from the left table even if no match and will only return matches from right. right join does the opposite.
SELECT * # Same thing as ^ just using aliasing to make it shorter.
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
; # Includes Ron Swanson because he is in the sal table (right table)

-- Self Join
-- You tie the table to itself

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_id,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1 #give distinct names so that you can distinguish from each on the ON keyword
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables together

SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments; # This is a reference table - this is going toshow that we hjave these department names
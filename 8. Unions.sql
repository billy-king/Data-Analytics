-- Unions
# Combine ROWS

SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary
; # this is a bad query because it combines weird data together

SELECT first_name, last_name
FROM employee_demographics
UNION ALL # A union is union distinct by default. It gets rid of any duplicates. UNION ALL does not remove the duplicates
SELECT first_name, last_name
FROM employee_salary
; #this is better - now you have all the names form all the tables.

SELECT first_name, last_name, 'Old Man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male' # This select statement selects all men older than 40
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female' # This select statement selects all women older than 40
UNION
SELECT first_name, last_name, 'Highly Paid' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name # This select statement selects all employees making more than $70K
;
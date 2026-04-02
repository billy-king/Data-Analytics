-- Having vs. Where

SELECT gender, AVG(age) # this is an aggregate function
FROM  employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT *
FROM employee_salary
;

SELECT occupation, AVG(salary)		#selects the occupation column and creates an average salary column that aggregates down
FROM employee_salary				#from the employee_salary table
WHERE occupation LIKE '%manager%'	#where the occupation includes the word 'manager'
GROUP BY occupation					#groups
HAVING AVG(salary) > 75000
;
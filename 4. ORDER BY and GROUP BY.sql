SELECT * 
FROM  employee_demographics;


SELECT gender, AVG(age) # this is an aggregate function
FROM  employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) # this is an aggregate function
FROM  employee_demographics
GROUP BY gender
;

-- ORDER by
SELECT *
FROM  employee_demographics
ORDER BY gender, age # orders by gender first, then by age
;

SELECT *
FROM  employee_demographics
ORDER BY 5, 4 # you can use column position as well. not recommended in case y ou add columns or anything 
;
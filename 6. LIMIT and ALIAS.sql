-- Limit and Aliasing
SELECT *
from employee_demographics
LIMIT 2 # Limits the results to the top 2 rows in the data set.
;

SELECT *
from employee_demographics
ORDER BY age DESC
LIMIT 2 # Limits the results to the top 2 rows in the data set. Since we ordered by age, it'll be the 2 oldest people
;

SELECT *
from employee_demographics
ORDER BY age DESC
LIMIT 2, 1 # Limits the results to the 1st (1 after comma) row after the 1st 2 (before comma) rows in the data set. Gives 3rd row
;

-- Aliasing

SELECT gender, AVG(age) AS avg_age #Takes a result and renames the header of that new column. You can remove the AS, it is implied in the coding
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;
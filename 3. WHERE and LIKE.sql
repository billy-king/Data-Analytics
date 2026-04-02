SELECT * 
FROM  employee_salary
WHERE first_name = 'Leslie'
;


SELECT * 
FROM  employee_demographics
WHERE birth_date > '1985-01-01'
;

-- AND OR NOT -- Logical Operators

SELECT * 
FROM  employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;

SELECT * 
FROM  employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;

-- LIKE Statement
-- % and _
SELECT * 
FROM  employee_demographics
WHERE first_name LIKE '%er%' #Looks for anything that contains 'er' and can end with anything
;

SELECT * 
FROM  employee_demographics
WHERE first_name LIKE 'A__%' #Looks for things that start with 'A' and have exactly 2 other letters that can be anything - returns exactly 3 letter results
;

SELECT * 
FROM  employee_demographics
WHERE first_name LIKE 'A__%' #Looks for things that start with 'A' and have exactly 2 other letters that can be anything and can have any other characters after it
;

SELECT * 
FROM  employee_demographics
WHERE birth_date LIKE '1989%' #Looks for anybody with a birthdate of 1989
;
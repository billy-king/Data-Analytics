-- String functions

SELECT LENGTH('skyfall'); # Gives the lenth of the string.

SELECT first_name, LENGTH(first_name) AS Length
FROM employee_demographics
ORDER BY Length
;

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name) AS Upper
FROM employee_demographics
ORDER BY Upper
;

-- Trim - takes white spacee on front or end and gets rid of it.
SELECT TRIM('       sky          ');
SELECT LTRIM('       sky          ');
SELECT RTRIM('       sky          ');

SELECT first_name,
LEFT(first_name, 4), # starts on the leeft and goes right 4 characters and returns that much.
RIGHT(first_name, 4), # starts on the right and goes 4 characters to the left and returns that.
SUBSTRING(first_name, 3,2), # first number is your starting position, theen how manycharactersyou go 
birth_date,
SUBSTRING(birth_date, 6,2) AS birth_month
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'a','z') # takes the first entry and replaces with the second entry.
FROM employee_demographics
;

SELECT LOCATE('x', 'Alexander'); # tells you where the first occurence of a letter is in a string.

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics
;

SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;
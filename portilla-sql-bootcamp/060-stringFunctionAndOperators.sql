--SQL Lesson: STRING FUNCTION AND OPERATORS

--Q1: using a string function, concatenate customer's first and last names
SELECT first_name || ' ' || last_name AS full_name FROM customer;

--Q2: use a string function to see how many characters are in the first name of each customer
SELECT first_name, char_length(first_name) FROM customer;

--Q3: get upper and lower case from customer
SELECT upper(first_name) FROM customer;
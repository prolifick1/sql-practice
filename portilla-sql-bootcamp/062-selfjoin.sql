-- SQL Lesson: SELFJOIN

-- Q2 retrieve all customers whose last_name matches the first_name of another customer
SELECT a.first_name, a.last_name, b.first_name, b.last_name FROM customer AS a, customer AS b WHERE a.first_name = b.last_name;
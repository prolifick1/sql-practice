-- SQL Lesson: TIMESTAMPS AND EXTRACT

-- Q1: extract calendar day from (15th, 21st, etc) from payments table
SELECT EXTRACT(DAY from payment_date) AS day FROM payment;

-- Q2: how much did you get in payments of highest grossing month (narrow it  all the way down)
SELECT SUM(amount) AS gross, EXTRACT(MONTH FROM payment_date) AS month FROM payment GROUP BY month ORDER BY gross DESC LIMIT 1;
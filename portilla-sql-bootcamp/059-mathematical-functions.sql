-- SQL Lesson: MATHEMATICAL FUNCTIONS

-- Q1: add customer_id and rental_id as column newid, then show with division
SELECT customer_id+rental_id AS new_id FROM payment;

-- Q2: get average of payments, round 2 places
SELECT round(AVG(amount),2) FROM payment;
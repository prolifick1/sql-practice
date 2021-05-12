-- SQL Lesson: HAVING

-- Q1: We want to know what customers are eligible for our platinum credit card. The requirements are that the customer has at least a total of 40 transaction payments. What customers (by id) are eligible for the credit card?
SELECT customer.customer_id, COUNT(payment_id) FROM customer JOIN payment ON customer.customer_id = payment.customer_id GROUP BY customer.customer_id HAVING COUNT(payment_id) >= 40;
-- Q2: When grouped by rating, what movies ratings have an average rental duration of more than 5 days?
SELECT rating, AVG(rental_duration) FROM film GROUP BY rating HAVING AVG(rental_duration) > 5;
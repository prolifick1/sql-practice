-- SQL Lesson: GROUP BY

-- Q1: customer ID and the total amount they spent...now filter out only customers (should be 2 of them) who have spent more than $200

SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id HAVING SUM(amount) > 200;

-- Q2: make a list of store ids and how many customer ids belong to each store, then return which one has more than 300 customers (returns one record)
SELECT store.store_id, COUNT(customer_id) FROM store JOIN customer ON store.store_id = customer.store_id GROUP BY store.store_id HAVING COUNT(customer_id)> 300;

-- Q3: get  the rating and average rental rate only for R, G and PG movies
SELECT rating, AVG(rental_rate) FROM film WHERE rating='R' OR rating='PG' OR rating='G' GROUP BY rating;

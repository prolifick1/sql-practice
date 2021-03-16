-- SQL Lesson 1: SELECT queries 101 
-- (Link: https://sqlbolt.com/lesson/select_queries_introduction)

-- Q1: find films whose rental rate is higher than the average rental rate 
SELECT avg(rental_rate) FROM film;  #2.98
SELECT title, rental_rate FROM film WHERE rental_rate > 2.98;

-- Q2:  find films whose rentel rate is higher than the average rental rate
SELECT title, rental_rate FROM film WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);


-- Q3: Get films (by id) that have been returned between may 29th, 2005 and may 30th, 2005
SELECT inventory.film_id FROM rental JOIN inventory ON inventory.inventory_id = rental_inventory_id WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30';
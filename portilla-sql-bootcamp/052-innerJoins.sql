-- SQL Lesson: INNER JOINS

--Q1: Determine how many total copies of each individual title are available at store_id 1
SELECT store_id, COUNT(title) FROM inventory INNER JOIN film ON inventory.film_id = film.film_id WHERE store_id = 1 GROUP BY title;
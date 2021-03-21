-- SQL Lesson: OUTER JOINS

-- Q1: find list of films that are NOT in inventory
SELECT film.film_id, title, inventory.inventory_id FROM film LEFT JOIN inventory ON inventory.film_id = film.film_id WHERE inventory.film_id IS NULL;

-- Q2:  find list of films that are NOT in inventory, but without referring to the film_id as the null condition
SELECT film.film_id, title, inventory.inventory_id FROM film LEFT JOIN inventory ON inventory.film_id = film.film_id WHERE inventory_id IS NULL;
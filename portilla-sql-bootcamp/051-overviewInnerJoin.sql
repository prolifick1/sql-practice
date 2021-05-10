-- SQL Lesson: INNER JOINS

--Q1: get a table with customer_id, [first_name], last_name, amount, and payment date
SELECT customer.customer_id, first_name, last_name, amount, payment_date FROM customer JOIN payment ON customer.customer_id = payment.customer_id;

--Q2: get a table with customer_id, [first_name], last_name, amount, and payment date, order them by the last_name, alphabetically
SELECT customer.customer_id, first_name, last_name, amount, payment_date FROM customer JOIN payment ON customer.customer_id = payment.customer_id ORDER by last_name ASC;

--Q3: get a table with customer_id, [first_name], last_name, amount, and payment date, get only customer_id 2
SELECT customer.customer_id, first_name, last_name, amount, payment_date FROM customer JOIN payment ON customer.customer_id = payment.customer_id WHERE customer.customer_id = 2;


--Q4: get a table with customer_id, [first_name], last_name, amount, and payment date, get only the first_name begins with A
SELECT customer.customer_id, first_name, last_name, amount, payment_date FROM customer JOIN payment ON customer.customer_id = payment.customer_id WHERE first_name LIKE 'A%';
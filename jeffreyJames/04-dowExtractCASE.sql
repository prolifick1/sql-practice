-- SQL Lesson 4: Get Day of Week With extract() + CASE statement

-- Q1: get payment totals by day of week (numeral ok)
SELECT extract(dow FROM p.payment_date) dow, sum(p.amount)::money  FROM payment p GROUP BY dow;


-- Q2: use a case statement to make dow human readable (remember dow start val)
SELECT *, CASE WHEN t.dow = 0 THEN 'Sunday' WHEN t.dow = 1 THEN 'Monday' WHEN t.dow = 2 THEN 'Tuesday' WHEN t.dow = 3 THEN 'Wednesday' WHEN t.dow = 4 THEN 'Thursday' WHEN t.dow = 5 THEN 'Friday' WHEN t.dow = 6 THEN 'Saturday' END FROM (SELECT extract(dow FROM p.payment_date) dow, SUM(p.amount)::money FROM payment p GROUP BY dow ORDER BY dow) t;

--Q3: Use case statement to deal with count with at least 20 orders (do not use HAVING clause)

--TODO
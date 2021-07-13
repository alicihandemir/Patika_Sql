-- ÖDEV 1

-- 1.1
SELECT title,description FROM film;

--1.2
SELECT * FROM film
WHERE length > 60 AND length < 75;

--1.3
SELECT * FROM film 
WHERE rental_rate = 0.99 AND replacement_cost = 12.99 OR replacement_cost = 28.99;

--1.4
SELECT last_name FROM customer
WHERE first_name = 'Mary';
-- last_name = Smith

--1.5
SELECT * FROM film
WHERE lenght < 50 AND NOT(rental_rate = 2.99 OR rental_rate = 4.99);


-- ÖDEV 2

--2.1
SELECT * FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99;

--2.2
SELECT first_name, last_name FROM actor
WHERE first_name IN ('Penelope','Nick','Ed');

--2.3
SELECT * FROM film
WHERE (rental_rate IN (0.99,2.99,4.99)) AND (replacement_cost IN (12.99,15.99,28.99));

--ÖDEV 3

--3.1
SELECT country FROM country
WHERE country LIKE 'A%a';

--3.2
SELECT country FROM country
WHERE length(country)>=6 AND country LIKE '%n';

--3.3
SELECT title FROM film 
WHERE title ILIKE '%t%t%t%t%';

--3.4
SELECT * FROM film
WHERE (title LIKE 'C%') AND (length>90) AND (rental_rate = 2.99);

--ÖDEV 4

--4.1
SELECT DISTINCT(replacement_cost) FROM film;

--4.2
SELECT COUNT(DISTINCT(replacement_cost)) FROM film;

--4.3
SELECT COUNT(*) FROM film
WHERE (title LIKE 'T%') AND (rating = 'G');

--4.4
SELECT COUNT(*) FROM country
WHERE length(country) = 5;

--4.5
SELECT COUNT(*) FROM city
WHERE city ILIKE '%r';

--ÖDEV 5

--5.1
SELECT * FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

--5.2
SELECT * FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5
LIMIT 5;

--5.3
SELECT * FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;

--ÖDEV 6

--6.1
SELECT ROUND(AVG(rental_rate),2) FROM film;

--6.2
SELECT COUNT(*) FROM film
WHERE title LIKE 'C%';

--6.3
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

--6.4
SELECT COUNT (DISTINCT(replacement_cost)) FROM film
WHERE length>150;



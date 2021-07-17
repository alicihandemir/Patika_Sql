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

--ÖDEV 7

--7.1
SELECT rating FROM film
GROUP BY rating;

--7.2
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*)>50;

--7.3
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;

--7.4
SELECT country_id ,COUNT(*) FROM city
GROUP BY country_id
ORDER BY COUNT(*) DESC
LIMIT 1;

--ÖDEV 8

--8.1
CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	birthday DATE,
	email VARCHAR(100)
);

--8.2
insert into employee (id, name, birthday, email) values (1, 'Adda', '1970-05-23', 'atheze0@google.com.au');
insert into employee (id, name, birthday, email) values (2, 'Lazar', '2014-05-20', 'lgladbach1@delicious.com');
insert into employee (id, name, birthday, email) values (3, 'Jo', '1902-10-15', 'jgilogly2@redcross.org');
insert into employee (id, name, birthday, email) values (4, 'Adele', '1903-01-09', 'agrangier3@indiatimes.com');
insert into employee (id, name, birthday, email) values (5, 'Barbara', '1920-12-04', 'btolworth4@php.net');
insert into employee (id, name, birthday, email) values (6, 'Delilah', '1908-06-14', 'ddedomenicis5@google.com.br');
insert into employee (id, name, birthday, email) values (7, 'Algernon', '2004-08-06', 'ashalliker6@reuters.com');
insert into employee (id, name, birthday, email) values (8, 'Burr', '1962-07-25', 'bbrounsell7@dmoz.org');
insert into employee (id, name, birthday, email) values (9, 'Emyle', '1973-08-14', 'ebutten8@i2i.jp');
insert into employee (id, name, birthday, email) values (10, 'Guillema', '1980-07-26', 'gcroix9@1und1.de');
insert into employee (id, name, birthday, email) values (11, 'Rubetta', '1974-03-31', 'rmatchella@bigcartel.com');
insert into employee (id, name, birthday, email) values (12, 'Melisande', '1951-12-29', 'mashurstb@engadget.com');
insert into employee (id, name, birthday, email) values (13, 'Enrique', '1965-09-23', 'ecayleyc@ca.gov');
insert into employee (id, name, birthday, email) values (14, 'Pearce', '1911-06-16', 'ploramd@infoseek.co.jp');
insert into employee (id, name, birthday, email) values (15, 'Bell', '1924-07-05', 'btrouncee@shop-pro.jp');
insert into employee (id, name, birthday, email) values (16, 'Les', '1970-11-17', 'lstuddersf@freewebs.com');
insert into employee (id, name, birthday, email) values (17, 'Mendel', '1967-02-25', 'mknightleyg@is.gd');
insert into employee (id, name, birthday, email) values (18, 'Saunderson', '1994-03-16', 'schaveyh@printfriendly.com');
insert into employee (id, name, birthday, email) values (19, 'Robbin', '1920-05-02', 'rgreendalei@i2i.jp');
insert into employee (id, name, birthday, email) values (20, 'Glory', '1948-11-02', 'gkalinkej@nih.gov');
insert into employee (id, name, birthday, email) values (21, 'Fey', '1909-04-19', 'ffrancktonk@flickr.com');
insert into employee (id, name, birthday, email) values (22, 'Ingrim', '1905-08-09', 'ilampittl@washington.edu');
insert into employee (id, name, birthday, email) values (23, 'Mychal', '1939-05-01', 'mleupoldtm@hud.gov');
insert into employee (id, name, birthday, email) values (24, 'Erroll', '1985-03-27', 'eambrodin@mlb.com');
insert into employee (id, name, birthday, email) values (25, 'Killy', '1986-01-26', 'kkermatho@earthlink.net');
insert into employee (id, name, birthday, email) values (26, 'Hieronymus', '1954-09-22', 'hgobolosp@go.com');
insert into employee (id, name, birthday, email) values (27, 'Rivkah', '2009-04-03', 'rruffliq@usatoday.com');
insert into employee (id, name, birthday, email) values (28, 'Elsinore', '1948-12-14', 'eoslerr@macromedia.com');
insert into employee (id, name, birthday, email) values (29, 'Rosabella', '2008-05-29', 'rharringtons@istockphoto.com');
insert into employee (id, name, birthday, email) values (30, 'Reuven', '2013-08-28', 'rlambshinet@dagondesign.com');
insert into employee (id, name, birthday, email) values (31, 'Norean', '1922-08-30', 'nkovnotu@alibaba.com');
insert into employee (id, name, birthday, email) values (32, 'Maje', '1912-12-08', 'mhardstaffv@sohu.com');
insert into employee (id, name, birthday, email) values (33, 'Allison', '2020-02-13', 'athalmannw@prweb.com');
insert into employee (id, name, birthday, email) values (34, 'Guss', '1920-07-18', 'gnardix@meetup.com');
insert into employee (id, name, birthday, email) values (35, 'Yule', '1925-04-28', 'yteazey@tmall.com');
insert into employee (id, name, birthday, email) values (36, 'Yuma', '1950-09-07', 'ylambolez@twitpic.com');
insert into employee (id, name, birthday, email) values (37, 'Audrie', '2007-11-02', 'agye10@unc.edu');
insert into employee (id, name, birthday, email) values (38, 'Emelda', '1999-07-19', 'ehargey11@cbc.ca');
insert into employee (id, name, birthday, email) values (39, 'Lock', '2007-05-19', 'lleeuwerink12@hugedomains.com');
insert into employee (id, name, birthday, email) values (40, 'Raymond', '1968-01-29', 'rgrocutt13@house.gov');
insert into employee (id, name, birthday, email) values (41, 'Candra', '1972-12-25', 'csuter14@wsj.com');
insert into employee (id, name, birthday, email) values (42, 'Gusta', '1918-12-24', 'ggrgic15@de.vu');
insert into employee (id, name, birthday, email) values (43, 'Neal', '1992-10-31', 'nrowley16@uol.com.br');
insert into employee (id, name, birthday, email) values (44, 'Mandy', '1957-10-16', 'mrosenzwig17@gnu.org');
insert into employee (id, name, birthday, email) values (45, 'Frankie', '1930-06-01', 'ffeathersby18@bloglovin.com');
insert into employee (id, name, birthday, email) values (46, 'Aguistin', '1974-06-27', 'abuddock19@amazon.com');
insert into employee (id, name, birthday, email) values (47, 'Raine', '1955-12-21', 'rtorald1a@jugem.jp');
insert into employee (id, name, birthday, email) values (48, 'Auroora', '1918-01-20', 'amusk1b@bbc.co.uk');
insert into employee (id, name, birthday, email) values (49, 'Abner', '1985-10-29', 'athackham1c@huffingtonpost.com');
insert into employee (id, name, birthday, email) values (50, 'Wilbur', '2011-09-19', 'wdarracott1d@loc.gov');

--8.3
UPDATE employee
SET name = 'Heisenberg'
WHERE id = 6;

UPDATE employee
SET birthday = '1975-12-18'
WHERE name = 'Heisenberg';

UPDATE employee
SET email = 'say_myname@heisenberg.com'
WHERE birthday = '1975-12-18';

UPDATE employee
SET name = 'Lazarus', birthday = '2005-05-20'
WHERE id = 35;

UPDATE employee
SET email = 'lazarus@pit.com'
WHERE name = 'Lazarus' AND birthday = '2005-05-20';

--8.4
DELETE FROM employee
WHERE id = 15;

DELETE FROM employee
WHERE name = 'Killy';

DELETE FROM employee
WHERE birthday = '1918-01-20';

DELETE FROM employee
WHERE email = 'csuter14@wsj.com';

DELETE FROM employee
WHERE name = 'Mandy';

--ÖDEV 9

--9.1
SELECT city, country FROM country
INNER JOIN city ON country.country_id = city.country_id;

--9.2
SELECT payment_id, first_name, last_name FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id;

--9.3
SELECT rental_id, first_name, last_name FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id;

--ÖDEV 10

--10.1
SELECT city.city, country.country FROM city
LEFT JOIN country ON city.country_id = country.country_id;

--10.2
SELECT payment.payment_id, customer.first_name, customer.last_name FROM payment
RIGHT JOIN customer ON customer.customer_id = payment.customer_id;

--10.3
SELECT rental.rental_id, customer.first_name, customer.last_name FROM rental
FULL JOIN customer ON customer.customer_id = rental.customer_id;

--ÖDEV 11	

--11.1
(SELECT first_name FROM actor)
UNION 
(SELECT first_name FROM customer);

--11.2
(SELECT first_name FROM actor)
INTERSECT
(SELECT first_name FROM customer);

--11.3
(SELECT first_name FROM actor)
EXCEPT
(SELECT first_name FROM customer);

--11.4

(SELECT first_name FROM actor)
UNION ALL
(SELECT first_name FROM customer);


(SELECT first_name FROM actor)
INTERSECT ALL
(SELECT first_name FROM customer);

( SELECT first_name FROM actor )
EXCEPT ALL
( SELECT first_name FROM customer );


--11.3
(SELECT first_name FROM actor)
EXCEPT
(SELECT first_name FROM customer);

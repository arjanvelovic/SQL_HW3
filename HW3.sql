-- Question 1
SELECT customer_id, first_name, last_name, district
FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';
-- There are 4 customers from texas

-- Question 2
SELECT payment_id, first_name, last_name, amount
FROM payment p
JOIN customer c
ON p.customer_id = c.customer_id
WHERE amount > 6.99;

-- Question 3
SELECT customer_id, first_name, last_name
FROM customer c
WHERE customer_id IN (
	SELECT customer_id
	FROM payment p
	WHERE amount > 175
);

--Qestion 4
SELECT *
FROM customer c
JOIN address a
ON c.address_id = a.address_id
JOIN city c2
ON a.city_id = c2.city_id
JOIN country c3
ON c2.country_id = c3.country_id
WHERE country = 'Nepal'

-- Question 5
SELECT staff_id, count(payment_id)
FROM payment p
GROUP BY staff_id

-- Question 6
SELECT count(film_id), rating
FROM film
GROUP BY rating;

-- Question 7
SELECT customer_id, first_name, last_name
FROM customer c
WHERE customer_id IN (
	SELECT customer_id
	FROM payment p
	WHERE amount > 6.99
);

-- Question 8
SELECT count(*)
FROM rental r
JOIN payment p
ON r.rental_id = p.rental_id 
WHERE amount = 0;


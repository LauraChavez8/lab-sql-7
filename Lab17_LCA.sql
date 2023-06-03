USE sakila;

SELECT last_name, COUNT(last_name) FROM sakila.actor
GROUP BY last_name
HAVING COUNT(last_name) = 1;

SELECT last_name, COUNT(last_name) FROM sakila.actor
GROUP BY last_name
HAVING COUNT(last_name) > 1;

SELECT staff_id, COUNT(rental_id) FROM sakila.rental
GROUP BY staff_id;

SELECT release_year, COUNT(film_id) FROM sakila.film
GROUP BY release_year;

SELECT rating, COUNT(film_id) FROM sakila.film
GROUP BY rating;

SELECT rating, ROUND(AVG(length),2) FROM sakila.film
GROUP BY rating;

SELECT rating, ROUND(AVG(length),2) FROM sakila.film
GROUP BY rating
HAVING AVG(length) > 120;

--LIST ALL CUSTOMERS WHO LIVE IN TEXAS

SELECT customer_id
FROM customer
WHERE state_id = 'Texas';

--customer full name who paid at least 6.99
SELECT first_name, last_name
FROM customer
WHERE amount > 6.99;

--LIST customers who live in nepal
SELECT customer_id
FROM city
WHERE city = 'Nepal';

--staff member that had the most transactions

SELECT staff_id, COUNT(staff_id)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;

--movie that has been rented the most

SELECT inventory_id, COUNT(inventory_id)
from rental
GROUP BY inventory_id
ORDER BY COUNT(inventory_id) DESC;

--SHOW ALL CUSTOMERS who made a single payment above 6.99
SELECT customer_id
from rental 
GROUP BY customer_id
HAVING COUNT(customer_id) = 1;

--employee that gave out the most free rentals
SELECT staff_id, COUNT(staff_id)
from payment 
WHERE amount = 0
GROUP BY staff_id 
ORDER BY COUNT(staff_id) DESC;
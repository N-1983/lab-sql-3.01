USE sakila1;
SELECT * FROM staff;
-- Drop column picture from staff.
ALTER TABLE sakila1.staff
DROP COLUMN picture;
SELECT * FROM staff;


-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

# IS IT RELIABLE IN REAL LIFE?
INSERT INTO staff
VALUES (3,'Tammy','Sanders', 5, 'tammy.sanders@sakilastaff.com', 1, 1, 'Tammy', 123456, '2006-02-15 03:56:12');
SELECT * FROM sakila1.staff;

-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
SELECT * FROM sakila1.rental;

SELECT customer_id FROM sakila1.customer
WHERE first_name = 'CHARLOTTE' AND last_name = 'HUNTER';

SELECT * FROM sakila1.film
WHERE title = 'Academy Dinosaur';

SELECT * FROM sakila1.inventory
WHERE inventory_id = 1 ;

SELECT * FROM sakila1.staff
WHERE staff_id = 1; 
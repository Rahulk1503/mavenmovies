-- Question no.1 --
-- Identify the primary keys and foreign keys in maven movies db. Discuss the differences 
-- Solution --
-- The major difference between Primary key and foreign key is Primary keys uniquely identify a record in a table, while foreign keys establish a link between tables. 
-- A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table. --
-- Question no.2 --
-- List all details of actors
-- Solution --
USE mavenmovies;
select * from actor ;
-- Question no.3  --
-- List all customer information from DB.
-- Solution--
select * from customer ;
-- Question no.4 --
-- List different countries. 
-- solution --
select distinct country from country ;
-- Question no.5 
-- Display all active customers. 
-- Solution ---
select customer_id, first_name, last_name, email from customer where `active`=1;
-- Question no.6 
-- Display all active customers. 
-- solution --
select rental_id from rental where customer_id=1;
-- Question no.7
-- Display all the films whose rental duration is greater than 5 .  
-- solution --
select film_id, title from film where rental_duration > 5 ;
-- Question no.8 
-- List the total number of films whose replacement cost is greater than $15 and less than $20. 
-- Solution --
select count(*) from film where replacement_cost >15 and replacement_cost < 20 ;
-- Question no.9 
-- Display the count of unique first names of actors. 
-- solution --
select count(distinct first_name)from actor ;
-- Question no.10 
-- Display the first 10 records from the customer table . 
-- solution --
SELECT * FROM customer LIMIT 10;
-- Question no.11 
 -- Display the first 3 records from the customer table whose first name starts with ‘b’. 
-- solution --
select*from customer where first_name like "b%" limit 3 ;
-- Question no.12 
-- Display the names of the first 5 movies which are rated as ‘G’.
-- solution --
select title from film where rating ='g' limit 5 ;
-- Question no.13 
-- Find all customers whose first name starts with "a". 
-- solution --
select First_name from customer where first_name like 'a%' ;
-- Question no.14 
 -- Find all customers whose first name ends with "a".
-- solution --
select first_name from customer where first_name like '%a' ;
-- Question no.15 
-- Display the list of first 4 cities which start and end with ‘a’ . 
-- solution --
select city from city where city like 'a%a' limit 4 ;
-- Question no.16 
-- Find all customers whose first name have "NI" in any position. 
-- solution --
SELECT first_name FROM customer WHERE first_name LIKE '%ni%';
-- Question no.17
-- Find all customers whose first name have "r" in the second position . 
-- solution --
SELECT first_name FROM customer WHERE first_name LIKE '_r%';
-- Question no.18 
-- Find all customers whose first name starts with "a" and are at least 5 characters in length. 
-- solution --
SELECT first_name FROM customer WHERE first_name LIKE 'a____%';
-- Question no.19 
-- solution --
--  Find all customers whose first name starts with "a" and ends with "o".
SELECT first_name FROM customer WHERE first_name LIKE 'a%o';
-- Question no.20 
-- Get the films with pg and pg-13 rating using IN operator.
-- solution --
select film_id, title, rating from film where rating in ('pg' , 'pg-13') ;
-- Question no.21 
-- Get the films with length between 50 to 100 using between operator. 
-- solution --
select film_id, title, length from film where length between 50 and 100 ;
-- Question no.22 
-- Get the top 50 actors using limit operator. 
-- solution --
select * from actor limit 50 ;
-- Question no.23 
-- Get the distinct film ids from inventory table. 
-- solution --
select distinct film_id from inventory ;





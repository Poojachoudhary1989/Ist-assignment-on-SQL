-- Ist assignment

use mavenmovies;

-- qus1. Identify the primary and foreign keys in mavenmovies database .Disscuss the differences.
SELECT * from film;
-- where we see PRI key .It means it is a primary key.or when  we see dark and underlined word that is a primary key.
-- when we see dark word without underline that is a foreign key.
-- Primary key always contain unique data.it can not be null.There must be a single primary key.
-- Foreign key is used to link two tables.A foreign key in one table(child table) is used to point PRIMARY KEY in another table(parent table).
-- PRIMARY KEY(ID) ,FOREIGN KEY(CITY) REFRENCES CITY(ID)

-- qus2. List of all details of actors.
select * from actor;

-- qus3. List of all customer information from database.
select * from customer;

-- qus4. List different countries.
select * from country;

-- qus5. Display all active customer.
select last_name , first_name ,active from customer where active=1;

-- qus6. List of all rental ID for customer with ID1.
select rental_id ,customer_id from rental where customer_id=1;

-- qus7. Display all the films whose rental duration is greater than 5.
select title, rental_duration from film where rental_duration>5;

-- qus8. List the total no. of films whose replacement cost is greater than 15 and less than 20.
select title , replacement_cost from film where replacement_cost between 15 and 20;

-- qus9. Display the count of unique first name of actor.
select count(distinct(first_name)) from actor;

-- qus10. Display the first 10 records from the customer table.
select * from customer limit 10;

-- qus11. Display the first 3 records from the customer table whose first name start with b.
select first_name from customer where first_name like "B%" limit 3;	

-- qus12. Display the names of first 5 movies which are rated as G.
select title ,rating  from film where rating like "G" limit 5;

-- qus13. Find all customer whose first_name starts with A.
select first_name from customer where first_name like "A%";

-- qus 14. Find all customer whose first name ends with a.
select first_name from customer where first_name like "%a";

-- qus15. Display the list first 4 cities which starts and end with a.
select city from city where city like "a%a" limit 4;

-- qus16. Find all customer whose first name have "ni" in any position.
select first_name from customer where first_name like "%ni%";

-- qus17. Find all customer whose first_name have r in second position.
select first_name from customer where first_name like "_r%";

-- qus18. Find all customer whose first name start with a and are atleast 5 character in length.
select first_name from customer where length(first_name ) =5 and first_name like "a%";

-- qus19. Find all customer whose first_name starts with a and ends with o.
select  first_name from customer where first_name like "a%e";

-- qus20. Get the films with PG and PG-13 rating using IN operator.
select title , rating from film where rating ="pG" or rating= "pg-13"; -- using by or operator
select title , rating from film where rating in("pg","pg-13");         -- using by in operator

-- qus21. Get the films with length between 50 and 100 using between operator.
select title  ,length from film where length between 50 and 100;

-- qus22. Get the top 50 actors using limit operator.
select first_name , last_name from actor limit 50;

-- qus23. Get the distnict film id from inventory table.
select distinct(film_id) from inventory;
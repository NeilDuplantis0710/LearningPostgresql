-- Deleting/Dropping a table
DROP TABLE IF EXISTS people;

-- Creating a table, and "IF NOT EXISTS" means that create a table only when a table named "people" does not exist. 
-- Otherwise, ignore.
CREATE TABLE IF NOT EXISTS people (
-- SERIAL : Create auto-incrementing integer columns, thus no need of mentioning the id everytime. It will keep auto incrementing. Enabling us to have duplicate entries.
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(225) NOT NULL,
	age INT,
	job VARCHAR(255),
	employed BOOL
);

-- Not deleting the table, but emptying it, the table still exists.
TRUNCATE TABLE people;

-- Inserting some values within the table
INSERT INTO people(first_name, last_name ,age, job) VALUES ('Mike', 'Smith', 45, 'Programmer'), ('Lisa', 'Woods', 30, 'Accountant'), ('Chris', 'Stones', 80, 'Programmer');

-- Displaying all the values of the full_name and age in table "people", with a filter age<50.
-- SELECT first_name, age FROM people WHERE age<50;

-- Displaying all the values of first_name, last_name and age in table "people", with a filter "LIKE 'S%'" AND age<50, what does it mean is that, it will give us the values of last_name starting with 'S', and also with an age less than 50.
SELECT first_name, last_name ,age FROM people WHERE age<50 AND last_name LIKE 'S%'

-- Displaying all the values of first_name, last_name and age in table "people", with a filter "LIKE 'S%'" OR age<50, what does it mean is that, it will give us the values of last_name starting with 'S', and also with an age less than 50.
SELECT first_name, last_name ,age FROM people WHERE age<50 OR last_name LIKE 'S%'

-- To get only one "DISTINCT" job. No copies or repeated values allowed.
SELECT DISTINCT job FROM people WHERE age<100;

-- Here our "DISTINCT" query fails, beacuse first_name is unique for every entry.
SELECT DISTINCT job, first_name FROM people WHERE age<100;

 -- Here we can filter based on "BETWEEN", like ages between 32 and 67
SELECT job, first_name, last_name, age FROM people WHERE age BETWEEN 32 AND 67;

-- We can also filter out base on what is the name of the "job" field
SELECT job, first_name, last_name, age FROM people WHERE job = 'Programmer';

-- Selecting to insert only some values, and the rest being null.
INSERT INTO people (id, first_name, employed) VALUES (4, 'Chris', true);

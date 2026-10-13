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


-- Inserting some values within the table
INSERT INTO people(first_name, last_name) VALUES ('Mike', 'Smith'), ('Lisa', 'Woods'), ('Chris', 'Stones');

-- Displaying all the values of the table "people".
SELECT * FROM people;

-- Selecting to insert only some values, and the rest being null.
INSERT INTO people (id, first_name, employed) VALUES (4, 'Chris', true);

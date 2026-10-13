-- Creating a table, and "IF NOT EXISTS" means that create a table only when a table named "people" does not exist. 
-- Otherwise, ignore.
CREATE TABLE IF NOT EXISTS people (
    id INT PRIMARY KEY,
    first_name VARCHAR(255),
	last_name VARCHAR(225),
	age INT,
	job VARCHAR(255),
	employed BOOL
);


-- Inserting some values within the table
INSERT INTO people VALUES (1, 'Mike', 'Smith', 30, 'Programmer', true);

-- Displaying all the values of the table "people".
SELECT * FROM people;

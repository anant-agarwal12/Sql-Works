-- THis sql script performs the following operations: create , alter and drop table in the database named "MyDatabase".
USE MyDatabase

-- 1. Create a table named "persons" with the following columns: id (INT, not null), person_name (VARCHAR(50), not null), date_of_birth (DATE), and phone (VARCHAR(15), not null). Set the id column as the primary key.
CREATE TABLE persons(
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	date_of_birth DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
	);

-- 2. Alter table to add a new column named "email" of type VARCHAR(20) that cannot be NULL.
ALTER TABLE persons
ADD email VARCHAR(20) NOT NULL

-- 3. Alter table to drop the "phone" column.
ALTER TABLE persons
DROP COLUMN phone;

-- 4. Alter table to change the data type of the "email" column to VARCHAR(40) and ensure it cannot be NULL.
ALTER TABLE persons
ALTER COLUMN email VARCHAR(40) NOT NULL;

DROP TABLE persons;


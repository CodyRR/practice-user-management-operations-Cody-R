INSERT INTO users (username, firstName, lastName, age)
VALUES
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);
 /* Filling in the table with the data */
 
 select * from users;
 /* This will display all data in the table */
 
 UPDATE users SET firstName = 'Jane', lastName = 'Doe' WHERE username = 'jdoe';
 /* This will change an entry to have a new first and last name at any location where username is 'jdoe' */
 
 DELETE FROM users WHERE username = 'jdoe';
 /* This will remove the entry at any location where username is 'jdoe' */
 
 SELECT firstName, lastName FROM users WHERE lastName = 'Doe';
 /* This will display the first and last name at anylocation where lastName is 'Doe' */
 
 SELECT firstName AS First, lastName AS Last FROM users;
 /* This will display the first and last names with those column names as First and Last */
 
 SELECT concat(firstName, ' ', lastName) AS fullName FROM users;
 /* This will display a single column with a label of the fullName that has data that combines the first and last names */
 
 SELECT * FROM users ORDER BY age DESC;
 /* This will display all data that is ordered by age in descending order */
 
 SELECT firstName AS First, age FROM users WHERE age > 30 AND age < 60 LIMIT 5;
 /* This will display the first name and age where age is between 30 and 60. Limited to 5 entries */
 
 ALTER TABLE users ADD lastInitial varchar(1);
 ALTER TABLE users ADD isAdult boolean;
 /* This will add new columns to the tabel */
 
 SELECT LEFT(lastName, 1) FROM users;
 
 UPDATE users SET lastInitial = Left(lastName, 1);
 UPDATE users SET isAdult=1 where age >= 21;
 UPDATE users SET isAdult=0 where age < 21;
 /* This will populate the new columns with data */
 
 SELECT id, username FROM users WHERE isAdult=1 OR lastInitial="W";
 /* This will display data where there is an adult or there last initial is "W" */
 
 SELECT firstName FROM users where isAdult=0 LIMIT 3 OFFSET 1;
 /* This will display names from the 2nd-4th children */
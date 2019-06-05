DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses(
  name VARCHAR(255),
  id SERIAL4 PRIMARY KEY
);

CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  house INT2 REFERENCES houses(id),
  age INT2
);

SELECT * FROM houses;
SELECT * FROM students;

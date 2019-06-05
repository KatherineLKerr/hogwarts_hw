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
  house VARCHAR(255),
  age INT2
);

SELECT * FROM houses;
SELECT * FROM students;

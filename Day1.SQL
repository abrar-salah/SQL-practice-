CREATE TABLE students (
  id INT primary key auto_increment,
  name VARCHAR(50),
  age INT,
  major VARCHAR(50)
);

INSERT INTO students(name,age,major) VALUES 
('Abrar', 24, 'Computer Science'),
('Sarah', 22, 'Business'),
('Mona', 19, 'Engineering');

SELECT * FROM students WHERE age > 20;
SELECT * FROM students ORDER BY age;

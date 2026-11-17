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


SELECT*FROM  students 
WHERE age >20 AND major="Computer Science" ;

SELECT*FROM  students 
WHERE age <20 OR major="Business" ;

SELECT*FROM  students 
WHERE name LIKE 'A%' ;

SELECT*FROM  students 
WHERE name LIKE '%a%' ;

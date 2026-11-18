CREATE TABLE students (
  id INT primary key auto_increment,
  name VARCHAR(50),
  age INT,
  major VARCHAR(50)
);
CREATE TABLE books (
  id INT PRIMARY KEY AUTO_INCREMENT,
  bookName VARCHAR(50),
  std_id INT,
  FOREIGN KEY (std_id) REFERENCES students(id)
); 

INSERT INTO students(name,age,major) VALUES 
('Abrar', 24, 'Computer Science'),
('Sarah', 22, 'Business'),
('Mona', 19, 'Engineering');

INSERT INTO books (bookName,std_id)VALUES
('SQL Basics' , 1),
('Business 101' ,2),
('Java intro ', 1);


SELECT s.name,COUNT(b.std_id) AS "borrowedBooks" FROM students s LEFT JOIN books b
ON s.id=b.std_id
GROUP BY s.name;

SELECT COUNT(b.id) AS numberofbooks
FROM books b ;

SELECT s.name , COUNT(b.id) AS numberofbooks
FROM books b JOIN students s
ON b.std_id = s.id
GROUP BY s.name
HAVING COUNT(b.id) >1;

SELECT AVG(s.age) AS avgAge 
FROM students s;

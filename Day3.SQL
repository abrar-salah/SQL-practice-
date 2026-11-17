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

SELECT students.name , books.bookName FROM
students JOIN books
ON students.id = books.std_id;

SELECT students.name , books.bookName FROM
students LEFT JOIN books
ON students.id = books.std_id;

SELECT students.name , books.bookName FROM
students JOIN books
ON students.id = books.std_id 
WHERE books.bookName='SQL Basics' ;

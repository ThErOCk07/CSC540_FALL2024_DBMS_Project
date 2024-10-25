USE DBMSProject;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    username VARCHAR(50),
    password VARCHAR(50),
    email VARCHAR(100)
);

-- DESCRIBE students;

INSERT INTO students (student_id, full_name, username, password, email) 
VALUES
	(100001, 'Eric Perrig', 'ez356', 'qwdmq', 'ez356@example.mail'),
	(100002, 'Alice Artho', 'aa23', 'omdsws', 'aa23@edu.mail'),
	(100003, 'Bob Temple', 'bt163', 'sak+=', 'bt163@template.mail'),
	(100004, 'Lily Gaddy', 'li123', 'cnaos', 'li123@example.edu'),
	(100005, 'Aria Morrow', 'am213', 'jwocals', 'am213@example.edu'),
	(100006, 'Kellan Rhodes', 'kr21', 'camome', 'kr21@example.edu'),
	(100007, 'Sienna Hayes', 'sh13', 'asdqm', 'sh13@example.edu'),
	(100008, 'Finn Wilder', 'fw23', 'f13mas', 'fw23@example.edu'),
	(100009, 'Leona Mercer', 'lm56', 'ca32', 'lm56@example.edu');

SELECT * FROM students;
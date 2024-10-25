USE DBMSProject;

CREATE TABLE student_courses (
    student_id INT,
    registered_course_id VARCHAR(50),
    total_participation_points INT,
    num_finished_activities INT,
    PRIMARY KEY (student_id, registered_course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (registered_course_id) REFERENCES Courses(course_id)
);

-- DESCRIBE student_courses;

INSERT INTO student_courses (student_id, registered_course_id, total_participation_points, num_finished_activities) 
VALUES
	(100001, 'NCSUOganCSC440F24', 4, 2),
	(100001, 'NCSUOganCSC540F24', 1, 1),
	(100002, 'NCSUOganCSC440F24', 3, 1),
	(100003, 'NCSUOganCSC440F24', 0, 1),
	(100004, 'NCSUOganCSC440F24', 9, 3),
	(100004, 'NCSUOganCSC540F24', 0, 0),
	(100005, 'NCSUOganCSC540F24', 0, 0),
	(100005, 'NCSUOganCSC440F24', 4, 2),
	(100007, 'NCSUOganCSC440F24', 0, 0),
	(100008, 'NCSUSaraCSC326F24', 1, 1),
	(100009, 'NCSUJegiCSC522F24', 6, 2);
    
SELECT * FROM student_courses;



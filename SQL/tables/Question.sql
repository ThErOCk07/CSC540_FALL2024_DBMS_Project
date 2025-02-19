USE DBMSProject;

CREATE TABLE Questions (
    textbook_id INT,
    chapter_id VARCHAR(50),
    section_id VARCHAR(50),
    block_id VARCHAR(50),
    unique_activity_id VARCHAR(50),
    question_id VARCHAR(50),
    question_text TEXT,
    option_1 TEXT,
    opt_1_explanation TEXT,
    option_2 TEXT,
    opt_2_explanation TEXT,
    option_3 TEXT,
    opt_3_explanation TEXT,
    option_4 TEXT,
    opt_4_explanation TEXT,
    answer INT,
    PRIMARY KEY (textbook_id, chapter_id, section_id, block_id, unique_activity_id, question_id),
    FOREIGN KEY (textbook_id) REFERENCES Textbook(textbook_id),
    FOREIGN KEY (textbook_id,chapter_id) REFERENCES Chapter(textbook_id,chapter_id),
    FOREIGN KEY (textbook_id,chapter_id,section_id) REFERENCES Sections(textbook_id,chapter_id,section_id),
    FOREIGN KEY (textbook_id,chapter_id,section_id, block_id) REFERENCES Blocks(textbook_id,chapter_id,section_number, block_id),
    FOREIGN KEY (textbook_id,chapter_id,section_id, block_id, unique_activity_id) REFERENCES Activity(textbook_id,chapter_id,section_id, block_id, unique_activity_id)
);

-- DESCRIBE Questions;

INSERT INTO Questions (
    textbook_id, chapter_id, section_id, block_id, unique_activity_id, question_id, 
    question_text, option_1, opt_1_explanation, option_2, opt_2_explanation, 
    option_3, opt_3_explanation, option_4, opt_4_explanation, answer
)

VALUES 
	
    (101, 'chap01', 'Sec02', 'Block01', 'ACT0', 'Q1', 
    'What does a DBMS provide?', 
    'Data storage only', 'Incorrect: DBMS provides more than just storage', 
    'Data storage and retrieval', 'Correct: DBMS manages both storing and retrieving data', 
    'Only security features', 'Incorrect: DBMS also handles other functions', 
    'Network management', 'Incorrect: DBMS does not manage network infrastructure', 
    2),
	
    (101, 'chap01', 'Sec02', 'Block01', 'ACT0', 'Q2', 
    'Which of these is an example of a DBMS?', 
    'Microsoft Excel', 'Incorrect: Excel is a spreadsheet application', 
    'MySQL', 'Correct: MySQL is a popular DBMS', 
    'Google Chrome', 'Incorrect: Chrome is a web browser', 
    'Windows 10', 'Incorrect: Windows is an operating system', 
    2),
	
    (101, 'chap01', 'Sec02', 'Block01', 'ACT0', 'Q3', 
    'What type of data does a DBMS manage?', 
    'Structured data', 'Correct: DBMS primarily manages structured data', 
    'Unstructured multimedia', 'Incorrect: While some DBMS systems can handle it, it\'s not core', 
    'Network traffic data', 'Incorrect: DBMS doesn’t manage network data', 
    'Hardware usage statistics', 'Incorrect: DBMS does not handle hardware usage data', 
    1),
	
    (102, 'chap01', 'Sec02', 'Block01', 'ACT0', 'Q1', 
    'What was the "software crisis"?', 
    'A hardware shortage', 'Incorrect: The crisis was related to software development issues', 
    'Difficulty in software creation', 'Correct: The crisis was due to the complexity and unreliability of software', 
    'A network issue', 'Incorrect: It was not related to networking', 
    'Lack of storage devices', 'Incorrect: The crisis was not about physical storage limitations', 
    2),
	
    (102, 'chap01', 'Sec02', 'Block01', 'ACT0', 'Q2', 
    'Which methodology was first introduced in software engineering?', 
    'Waterfall model', 'Correct: Waterfall was the first formal software development model', 
    'Agile methodology', 'Incorrect: Agile was introduced much later', 
    'DevOps', 'Incorrect: DevOps is a more recent development approach', 
    'Scrum', 'Incorrect: Scrum is a part of Agile, not the first methodology', 
    1),
	
    (102, 'chap01', 'Sec02', 'Block01', 'ACT0', 'Q3', 
    'What challenge did early software engineering face?', 
    'Lack of programming languages', 'Incorrect: Programming languages existed but were difficult to manage', 
    'Increasing complexity of software', 'Correct: Early engineers struggled with managing large, complex systems', 
    'Poor hardware development', 'Incorrect: The issue was primarily with software, not hardware', 
    'Internet connectivity issues', 'Incorrect: Internet connectivity wasn\'t a challenge in early software', 
    2),
	
    (103, 'chap01', 'Sec02', 'Block01', 'ACT0', 'Q1', 
    'What is the primary goal of supervised learning?', 
    'Predict outcomes', 'Correct: The goal is to learn a mapping from inputs to outputs for prediction.', 
    'Group similar data', 'Incorrect: This is more aligned with unsupervised learning.', 
    'Discover patterns', 'Incorrect: This is not the main goal of supervised learning.', 
    'Optimize cluster groups', 'Incorrect: This is not applicable to supervised learning.', 
    1),
    
	(103, 'chap01', 'Sec02', 'Block01', 'ACT0', 'Q2', 
    'Which type of data is used in unsupervised learning?', 
    'Labeled data', 'Incorrect: Unsupervised learning uses unlabeled data.', 
    'Unlabeled data', 'Correct: It analyzes data without pre-existing labels.', 
    'Structured data', 'Incorrect: Unlabeled data can be structured or unstructured.', 
    'Time-series data', 'Incorrect: Unsupervised learning does not specifically focus on time-series.', 
    2),
    
	(103, 'chap01', 'Sec02', 'Block01', 'ACT0', 'Q3', 
    'In which scenario would you typically use supervised learning?', 
    'Customer segmentation', 'Incorrect: This is more relevant to unsupervised learning.', 
    'Fraud detection', 'Correct: Supervised learning is ideal for predicting fraud based on labeled examples.', 
    'Market basket analysis', 'Incorrect: This is generally done using unsupervised methods.', 
    'Anomaly detection', 'Incorrect: While applicable, it is less common than fraud detection in supervised learning.', 
    2);

-- SELECT * FROM Questions;



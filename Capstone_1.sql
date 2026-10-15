-- Step 1: Create Tables
CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    grade TEXT
);

CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    credits INTEGER
);

CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    semester TEXT
);

-- Step 2: Insert Sample Data
INSERT INTO Students (student_id, name, age, grade) VALUES
(1, 'Alice', 15, '9'),
(2, 'Bob', 16, '10'),
(3, 'Charlie', 15, '9'),
(4, 'Diana', 17, '11');

INSERT INTO Courses (course_id, course_name, credits) VALUES
(101, 'Mathematics', 4),
(102, 'Physics', 3),
(103, 'Computer Science', 4);

INSERT INTO Enrollments (enrollment_id, student_id, course_id, semester) VALUES
(1, 1, 101, 'Fall'),
(2, 1, 103, 'Fall'),
(3, 2, 102, 'Spring'),
(4, 3, 101, 'Spring'),
(5, 4, 103, 'Fall');

-- Step 3: Manipulating Data
UPDATE Students
SET grade = '10'
WHERE student_id = 1;

DELETE FROM Enrollments
WHERE enrollment_id = 5;

-- Step 4: Sorting Data
SELECT * FROM Students
ORDER BY age ASC;

SELECT * FROM Courses
ORDER BY credits DESC;

-- Step 5: Filtering Data
SELECT name, age FROM Students
WHERE grade = '9';

SELECT * FROM Enrollments
WHERE semester = 'Fall';

-- Step 6: Aggregate Functions
-- Count how many students are enrolled in each semester
SELECT semester, COUNT(*) AS total_enrollments
FROM Enrollments
GROUP BY semester;

-- Find average age of students
SELECT AVG(age) AS average_age
FROM Students;

-- Find maximum credits among courses
SELECT MAX(credits) AS max_credits
FROM Courses;

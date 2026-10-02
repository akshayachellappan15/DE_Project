create database studentcoursemanagementsystem;
use studentcoursemanagementsystem;

create table Students(
student_id INT primary key,
name varchar(25) NOT null,
dob date not null,
gender varchar(20),
check (gender IN('M','F','T')),
email varchar(25) UNIQUE
);

create table Departments(
dept_id INT primary key,
dept_name varchar (25) NOT null
);

create table Courses(
course_id INT primary key,
course_name varchar (25) NOT null,
credits decimal(10,2),
check(credits>0),
dept_id INT,
Foreign key(dept_id) references Departments(dept_id)
);

create table Enrollments(
enroll_id INT primary key,
student_id INT,
course_id INT,
Foreign key(student_id) references Students(student_id), 
Foreign key (course_id) references courses(course_id),
semester VARCHAR(25) Not null,
grade varchar(5) check (grade IN('A','B','C','D','E','F'))
);

create table Faculty(
faculty_id INT primary key,
name varchar(25) NOT null,
dept_id INT,
Foreign key(dept_id) references Departments(dept_id)
);

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (1, 'Arjun Kumar', '2004-05-12', 'M', 'arjun.kumar@example.com');

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (2, 'Priya Sharma', '2003-11-23', 'F', 'priya.sharma@example.com');

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (3, 'Rahul Verma', '2005-01-15', 'M', 'rahul.verma@example.com');

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (4, 'Sneha Iyer', '2004-07-30', 'F', 'sneha.iyer@example.com');

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (5, 'Karthik Reddy', '2003-09-18', 'M', 'karthik.reddy@example.com');

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (6, 'Meera Nair', '2005-03-05', 'F', 'meera.nair@example.com');

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (7, 'Vikram Singh', '2004-12-10', 'M', 'vikram.singh@example.com');

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (8, 'Ananya Das', '2003-06-25', 'F', 'ananya.das@example.com');

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (9, 'Rohan Mehta', '2005-02-14', 'M', 'rohan.mehta@example.com');

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (10, 'Tanya Joseph', '2004-08-08', 'T', 'tanya.joseph@example.com');

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (11, 'Roomica', '2004-07-08', 'F', 'romica.Samuel@example.com');

INSERT INTO Students (student_id, name, dob, gender, email)
VALUES (12, 'Sharmi', '2004-09-08', 'F', 'sharmi.Samuel@example.com');

INSERT INTO Departments (dept_id, dept_name)
VALUES (1, 'Computer Science');

INSERT INTO Departments (dept_id, dept_name)
VALUES (2, 'Mechanical Engineering');

INSERT INTO Departments (dept_id, dept_name)
VALUES (3, 'Electrical Engineering');

INSERT INTO Courses (course_id, course_name, credits, dept_id)
VALUES (101, 'Database Systems', 4.00, 1);

INSERT INTO Courses (course_id, course_name, credits, dept_id)
VALUES (102, 'Data Structures', 3.00, 1);

INSERT INTO Courses (course_id, course_name, credits, dept_id)
VALUES (201, 'Thermodynamics', 4.00, 2);

INSERT INTO Courses (course_id, course_name, credits, dept_id)
VALUES (202, 'Fluid Mechanics', 3.00, 2);

INSERT INTO Courses (course_id, course_name, credits, dept_id)
VALUES (301, 'Circuit Analysis', 4.00, 3);

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (1, 1, 101, 'Odd Semester 2026', 'A');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (2, 2, 101, 'Odd Semester 2026', 'B');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (3, 3, 102, 'Odd Semester 2026', 'A');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (4, 4, 102, 'Odd Semester 2026', 'C');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (5, 5, 201, 'Even Semester 2027', 'B');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (6, 6, 201, 'Even Semester 2027', 'A');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (7, 7, 202, 'Even Semester 2027', 'C');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (8, 8, 202, 'Even Semester 2027', 'B');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (9, 9, 301, 'Odd Semester 2026', 'A');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (10, 10, 301, 'Odd Semester 2026', 'B');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (11, 1, 102, 'Semester 3', 'A');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (12, 2, 201, 'Semester 4', 'C');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (13, 3, 202, 'Semester 5', 'B');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (14, 4, 301, 'Semester 6', 'A');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester, grade)
VALUES (15, 5, 101, 'Summer Semester 2027', 'B');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester)
VALUES (16, 11, 101, 'Semester 7 2027');

INSERT INTO Enrollments (enroll_id, student_id, course_id, semester)
VALUES (17, 12, 102, 'Semester 8 2027');


-- to turn off safe mode
set sql_safe_updates=0;

-- to turn on safe mde
set sql_safe_updates=1;


select * from Students;
select * from Departments;
select * from Courses;
select * from Enrollments;


update Students set email ="akshfanofjoe@gmail.com" where name="Vikram Singh";
delete from Enrollments where enroll_id="15";
select name, email from Students;
SELECT s.student_id,
       s.name,
       SUM(
           CASE grade
               WHEN 'A' THEN 10
               WHEN 'B' THEN 8
               WHEN 'C' THEN 6
               WHEN 'D' THEN 4
               WHEN 'E' THEN 2
               WHEN 'F' THEN 0
           END * c.credits
       ) / SUM(c.credits) AS GPA
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id
GROUP BY s.student_id, s.name;

SELECT DISTINCT semester
FROM Enrollments
ORDER BY semester;

select student_id,name,dob from students where dob >= '2005-01-01' order by dob;
select student_id from Enrollments where (grade="A" OR course_id="101");
SELECT name, dob, gender
FROM Students
WHERE dob > '2000-01-01' AND gender = 'F';

select name from Students where dob > '2005-01-01' AND gender <> 'F';

SELECT s.student_id, s.name, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.course_name IN ('Database Systems', 'Thermodynamics');

SELECT s.student_id, s.name, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.course_name IN ('Database Systems')
  AND s.name LIKE 'P%';
  
  SELECT s.student_id, s.name, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE e.grade is null;



SELECT d.dept_name, COUNT(s.student_id) AS student_count
FROM departments d
JOIN Students s ON d.dept_id = s.student_id
GROUP BY d.dept_name
ORDER BY student_count DESC;

/* Average grade per course */
SELECT c.course_name, AVG(e.grade) AS average_grade
FROM Courses c
JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name
ORDER BY average_grade DESC;

/* Use UNION to combine student names from two departments */
SELECT s.name AS student_name,d.dept_name AS department
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
JOIN Departments d ON c.dept_id = d.dept_id
WHERE d.dept_name = 'Computer Science'

UNION

SELECT s.name AS student_name,d.dept_name AS department
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
JOIN Departments d ON c.dept_id = d.dept_id
WHERE d.dept_name = 'Mechanical Engineering'
ORDER BY department;

/*Apply LIMIT to show top 5 students by GPA*/
SELECT s.student_id,
       s.name,
       SUM(
           CASE grade
               WHEN 'A' THEN 10
               WHEN 'B' THEN 8
               WHEN 'C' THEN 6
               WHEN 'D' THEN 4
               WHEN 'E' THEN 2
               WHEN 'F' THEN 0
           END * c.credits
       ) / SUM(c.credits) AS GPA
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id
GROUP BY s.student_id, s.name
ORDER BY GPA DESC
LIMIT 5;

/* INNER JOIN students with enrollments */
SELECT s.student_id,
       s.name,
       s.email,
       e.course_id,
       e.semester,
       e.grade
FROM Students s
INNER JOIN Enrollments e
    ON s.student_id = e.student_id
ORDER BY s.student_id, e.semester;

/*LEFT JOIN courses with enrollments*/
SELECT c.course_id,
       c.course_name,
       e.enroll_id,
       e.student_id
FROM Courses c
LEFT JOIN Enrollments e
    ON c.course_id = e.course_id
ORDER BY c.course_id, e.student_id;

/* Find students who scored above the average grade*/
SELECT s.student_id,
       s.name,
       e.course_id,
       e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
WHERE 
    CASE e.grade
        WHEN 'A' THEN 10
        WHEN 'B' THEN 8
        WHEN 'C' THEN 6
        WHEN 'D' THEN 4
        WHEN 'E' THEN 2
        WHEN 'F' THEN 0
    END >
    (
        SELECT AVG(
            CASE grade
                WHEN 'A' THEN 10
                WHEN 'B' THEN 8
                WHEN 'C' THEN 6
                WHEN 'D' THEN 4
                WHEN 'E' THEN 2
                WHEN 'F' THEN 0
            END
        )
        FROM Enrollments
    )
ORDER BY student_id;

/* Apply EXISTS/NOT EXISTS to check if a student is enrolled in any course */
SELECT s.student_id,
       s.name,
       c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE EXISTS (
    SELECT 1
    FROM Enrollments e2
    WHERE e2.student_id = s.student_id
);

SELECT s.student_id,
       s.name,
       c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE NOT EXISTS (
    SELECT 1
    FROM Enrollments e
    WHERE e.student_id = s.student_id
);

select * from departments;
select * from Enrollments;
select * from Students;
select * from Courses;
select * from Faculty;




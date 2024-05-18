/*Assignment 1:Analyze a given business scenario and 
create an ER diagram that Includes entitles,relationships,attributes 
and cardinality. Ensure that the diagram reflects proper normalization 
up to the third normal form.*/

CREATE DATABASE university_course_registration;


USE university_course_registration;
CREATE TABLE Student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

CREATE TABLE Instructor (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

CREATE TABLE Course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(20),
    title VARCHAR(255),
    description TEXT
);

CREATE TABLE Section (
    section_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT,
    schedule VARCHAR(100),
    classroom VARCHAR(100),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

CREATE TABLE Enrollment (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    section_id INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (section_id) REFERENCES Section(section_id)
);

CREATE TABLE Instructor_Course (
    instructor_id INT,
    course_id INT,
    PRIMARY KEY (instructor_id, course_id),
    FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);


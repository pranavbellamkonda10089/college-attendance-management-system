-- Select the project database
USE college_attendance;

-- 1. Students table
CREATE TABLE IF NOT EXISTS Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    year_of_study INT NOT NULL
);

-- 2. Subjects table
CREATE TABLE IF NOT EXISTS Subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100) NOT NULL,
    faculty_name VARCHAR(100) NOT NULL
);

-- 3. Class Sessions table
CREATE TABLE IF NOT EXISTS Class_Sessions (
    session_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_id INT NOT NULL,
    session_date DATE NOT NULL,

    FOREIGN KEY (subject_id)
        REFERENCES Subjects(subject_id)
);

-- 4. Attendance table
CREATE TABLE IF NOT EXISTS Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    session_id INT NOT NULL,
    attendance_status ENUM('Present', 'Absent') NOT NULL,

    FOREIGN KEY (student_id)
        REFERENCES Students(student_id),

    FOREIGN KEY (session_id)
        REFERENCES Class_Sessions(session_id),

    UNIQUE (student_id, session_id)
);
USE college_attendance;

-- Insert students
INSERT INTO Students
    (student_name, department, year_of_study)
VALUES
    ('Rahul Sharma', 'ECE', 4),
    ('Priya Reddy', 'ECE', 4),
    ('Arjun Kumar', 'CSE', 4),
    ('Sneha Rao', 'ECE', 4),
    ('Vikram Singh', 'CSE', 4),
    ('Ananya Das', 'ECE', 4),
    ('Kiran Reddy', 'EEE', 4),
    ('Meghana Patel', 'CSE', 4),
    ('Sai Krishna', 'ECE', 4),
    ('Divya Nair', 'EEE', 4);

-- Insert subjects
INSERT INTO Subjects
    (subject_name, faculty_name)
VALUES
    ('Database Management Systems', 'Mr. Ramesh'),
    ('Computer Networks', 'Mrs. Lakshmi'),
    ('Digital Electronics', 'Mr. Suresh'),
    ('Operating Systems', 'Mrs. Kavitha');

-- Insert class sessions
INSERT INTO Class_Sessions
    (subject_id, session_date)
VALUES
    (1, '2026-09-01'),
    (1, '2026-09-02'),
    (1, '2026-09-03'),
    (2, '2026-09-01'),
    (2, '2026-09-02'),
    (3, '2026-09-01'),
    (3, '2026-09-03'),
    (4, '2026-09-01'),
    (4, '2026-09-02'),
    (4, '2026-09-03');

-- Insert attendance for sessions 1-5
INSERT INTO Attendance
    (student_id, session_id, attendance_status)
VALUES
    (1, 1, 'Present'),
    (1, 2, 'Present'),
    (1, 3, 'Absent'),
    (1, 4, 'Present'),
    (1, 5, 'Present'),

    (2, 1, 'Present'),
    (2, 2, 'Absent'),
    (2, 3, 'Absent'),
    (2, 4, 'Present'),
    (2, 5, 'Present'),

    (3, 1, 'Absent'),
    (3, 2, 'Present'),
    (3, 3, 'Present'),
    (3, 4, 'Present'),
    (3, 5, 'Absent'),

    (4, 1, 'Present'),
    (4, 2, 'Present'),
    (4, 3, 'Present'),
    (4, 4, 'Present'),
    (4, 5, 'Present'),

    (5, 1, 'Absent'),
    (5, 2, 'Absent'),
    (5, 3, 'Present'),
    (5, 4, 'Absent'),
    (5, 5, 'Present'),

    (6, 1, 'Present'),
    (6, 2, 'Present'),
    (6, 3, 'Absent'),
    (6, 4, 'Present'),
    (6, 5, 'Absent'),

    (7, 1, 'Present'),
    (7, 2, 'Absent'),
    (7, 3, 'Absent'),
    (7, 4, 'Present'),
    (7, 5, 'Present'),

    (8, 1, 'Absent'),
    (8, 2, 'Present'),
    (8, 3, 'Present'),
    (8, 4, 'Absent'),
    (8, 5, 'Present'),

    (9, 1, 'Present'),
    (9, 2, 'Present'),
    (9, 3, 'Present'),
    (9, 4, 'Absent'),
    (9, 5, 'Present'),

    (10, 1, 'Absent'),
    (10, 2, 'Absent'),
    (10, 3, 'Absent'),
    (10, 4, 'Present'),
    (10, 5, 'Absent');


-- Verify record counts
SELECT COUNT(*) AS total_students
FROM Students;

SELECT COUNT(*) AS total_subjects
FROM Subjects;

SELECT COUNT(*) AS total_sessions
FROM Class_Sessions;

SELECT COUNT(*) AS total_attendance_records
FROM Attendance;
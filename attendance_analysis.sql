USE college_attendance;

-- Query 1: Display all students
SELECT *
FROM Students;

-- Query 2: Display all subjects
SELECT *
FROM Subjects;

-- Query 3: Calculate student-wise attendance percentages
SELECT
    s.student_id,
    s.student_name,
    COUNT(a.attendance_id) AS total_classes,
    SUM(
        CASE
            WHEN a.attendance_status = 'Present' THEN 1
            ELSE 0
        END
    ) AS classes_attended,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN a.attendance_status = 'Present' THEN 1
                ELSE 0
            END
        ) / COUNT(a.attendance_id),
        2
    ) AS attendance_percentage
FROM Students s
JOIN Attendance a
    ON s.student_id = a.student_id
GROUP BY
    s.student_id,
    s.student_name
ORDER BY attendance_percentage DESC;

-- Query 4: Identify students below 75% attendance
SELECT
    s.student_id,
    s.student_name,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN a.attendance_status = 'Present' THEN 1
                ELSE 0
            END
        ) / COUNT(a.attendance_id),
        2
    ) AS attendance_percentage
FROM Students s
JOIN Attendance a
    ON s.student_id = a.student_id
GROUP BY
    s.student_id,
    s.student_name
HAVING attendance_percentage < 75
ORDER BY attendance_percentage ASC;

-- Query 5: Subject-wise attendance summary
SELECT
    sub.subject_name,
    COUNT(a.attendance_id) AS total_records,
    SUM(
        CASE
            WHEN a.attendance_status = 'Present' THEN 1
            ELSE 0
        END
    ) AS present_records,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN a.attendance_status = 'Present' THEN 1
                ELSE 0
            END
        ) / COUNT(a.attendance_id),
        2
    ) AS attendance_percentage
FROM Subjects sub
JOIN Class_Sessions cs
    ON sub.subject_id = cs.subject_id
JOIN Attendance a
    ON cs.session_id = a.session_id
GROUP BY
    sub.subject_id,
    sub.subject_name
ORDER BY attendance_percentage DESC;

-- Query 6: Count present and absent records
SELECT
    attendance_status,
    COUNT(*) AS total_records
FROM Attendance
GROUP BY attendance_status;

-- Query 7: Display attendance records with student and subject details
SELECT
    s.student_name,
    sub.subject_name,
    cs.session_date,
    a.attendance_status
FROM Attendance a
JOIN Students s
    ON a.student_id = s.student_id
JOIN Class_Sessions cs
    ON a.session_id = cs.session_id
JOIN Subjects sub
    ON cs.subject_id = sub.subject_id
ORDER BY
    s.student_name,
    cs.session_date;
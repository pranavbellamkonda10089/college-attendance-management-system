USE college_attendance;

-- View 1: Student attendance summary
CREATE OR REPLACE VIEW Student_Attendance_Summary AS
SELECT
    s.student_id,
    s.student_name,
    s.department,
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
    s.student_name,
    s.department;

-- View 2: Subject attendance summary
CREATE OR REPLACE VIEW Subject_Attendance_Summary AS
SELECT
    sub.subject_id,
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
    sub.subject_name;

-- Test the views
SELECT *
FROM Student_Attendance_Summary;

SELECT *
FROM Subject_Attendance_Summary;

-- Find students below 75%
SELECT *
FROM Student_Attendance_Summary
WHERE attendance_percentage < 75;


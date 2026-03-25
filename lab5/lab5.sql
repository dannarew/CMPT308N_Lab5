SELECT student_id, name 
FROM Students 
WHERE student_id IN (
    SELECT student_id 
    FROM Enrollments 
    WHERE course_id = 'CMPT308' AND term = '2026SP'
);
------------------------------------
SELECT course_id, title 
FROM Courses c
WHERE EXISTS (
    SELECT 1 
    FROM Enrollments e 
    WHERE e.course_id = c.course_id AND e.term = '2026SP'
);
------------------------------------
SELECT student_id, name 
FROM Students s
WHERE NOT EXISTS (
    SELECT 1 
    FROM Enrollments e 
    WHERE e.student_id = s.student_id AND e.term = '2026SP'
);
------------------------------------
SELECT student_id FROM Enrollments WHERE course_id = 'CMPT308' AND term = '2026SP'
UNION
SELECT student_id FROM Enrollments WHERE course_id = 'CYBR210' AND term = '2026SP';
------------------------------------
SELECT student_id FROM Enrollments WHERE course_id = 'CMPT308' AND term = '2026SP'
INTERSECT
SELECT student_id FROM Enrollments WHERE course_id = 'CYBR210' AND term = '2026SP';
------------------------------------
SELECT student_id FROM Enrollments WHERE course_id = 'CMPT308' AND term = '2026SP'
EXCEPT
SELECT student_id FROM Enrollments WHERE course_id = 'CYBR210' AND term = '2026SP';

-- We need to know which teachers actually assisted students during any cohort, 
-- and how many assistances they did for that cohort.

-- Instruction
-- Perform the same query as before, but include the number of assistances as well.

SELECT DISTINCT teachers.name as teacher, cohorts.name, count(assistance_requests.*) as num_assistances
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assistance_requests ON students.id = student_id
JOIN teachers ON teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;

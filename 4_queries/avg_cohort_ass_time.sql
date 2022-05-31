-- We need to be able to see the average duration of a single assistance 
-- request for each cohort.

-- Instruction
-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

SELECT cohorts.name as cohort_name, AVG(completed_at-started_at) as average_duration
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohort_name
ORDER BY average_duration ASC;
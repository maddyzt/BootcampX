-- We also need to know the average total amount of time being spent on an 
-- assistance request for each cohort. This is just the average of the 
-- total_duration column from the previous query.

-- Instruction
-- Calculate the average total duration of assistance requests for each cohort.

-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration

SELECT AVG(total_duration) AS average_total_duration
FROM (
      SELECT cohorts.name as cohort_name, SUM(completed_at-started_at) as total_duration
      FROM assistance_requests
      JOIN students ON student_id = students.id
      JOIN cohorts ON cohort_id = cohorts.id
      GROUP BY cohort_name
      ORDER BY total_duration ASC
) AS total_durations;
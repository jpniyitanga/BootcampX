SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY total_submissions DESC;






-- SELECT cohorts.name AS cohort, COUNT(assignment_submissions.id) AS total_submissions
-- FROM cohorts 
-- JOIN students ON cohorts.id = students.cohort_id
-- JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- GROUP BY cohort
-- ORDER BY total_submissions DESC;


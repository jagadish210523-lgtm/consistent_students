WITH student_consistency AS (
    SELECT
        s.name AS student_name,
        COUNT(e.course_id) OVER(PARTITION BY e.student_id) AS courses_completed,
        AVG(e.score) OVER(PARTITION BY e.student_id) AS average_score,
        MIN(e.score) OVER(PARTITION BY e.student_id) AS min_score
    FROM enrollments AS e
    LEFT JOIN students AS s
    ON s.id = e.student_id
    WHERE e.status = 'completed'
)
SELECT DISTINCT *
FROM student_consistency
WHERE courses_completed >= 2 AND min_score >= 80
ORDER BY average_score DESC;
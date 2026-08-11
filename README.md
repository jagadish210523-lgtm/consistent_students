## Requirements

- Consider only enrollments with a `completed` status.
- Students must have completed at least **2 courses**.
- Every completed course must have a score of **80 or above**.
- Calculate the average score for each student.
- Sort the final results by average score in descending order.

## Approach

1. Create a CTE to calculate student-level performance metrics.
2. Use `COUNT() OVER()` to determine the number of completed courses.
3. Use `AVG() OVER()` to calculate each student's average score.
4. Use `MIN() OVER()` to identify each student's lowest completed score.
5. Filter students with at least two completed courses.
6. Ensure the minimum score is at least 80.
7. Use `DISTINCT` to return one record per qualifying student.
8. Order the results by average score from highest to lowest.

## SQL Concepts

- Common Table Expressions (CTEs)
- Window Functions
- `COUNT() OVER()`
- `AVG() OVER()`
- `MIN() OVER()`
- `PARTITION BY`
- `DISTINCT`
- `WHERE`
- `ORDER BY`

Concepts practiced:

CTEs
Window functions
COUNT() OVER()
AVG() OVER()
MIN() OVER()
PARTITION BY
DISTINCT
Filtering
ORDER BY

Requirements:
  1.Consider only completed enrollments.
  2.Student must have at least 2 completed courses.
  3.Every completed score must be at least 80.
  4.Calculate the student's average score.
  5.Sort students by average score in descending order.

Approach:

  1.Use a CTE to calculate student-level statistics.
  2.Use COUNT() to count completed courses.
  3.Use AVG() to calculate each student's average score.
  4.Use MIN() to find each student's lowest score.
  5.Filter students with at least two courses and a minimum score of 80.
  6.Use DISTINCT to remove repeated rows produced by the window functions.
  7.Sort the final results by average score.

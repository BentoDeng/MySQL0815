USE myemployees;

SELECT salary ,grade_level
FROM employees e
INNER JOIN job_grades g
ON e.`salary` BETWEEN g.`lowest_sal` AND g.`highest_sal`;


SELECT COUNT(*),grade_level
FROM employees e
INNER JOIN job_grades g
ON e.`salary` BETWEEN g.`lowest_sal` AND g.`highest_sal`
GROUP BY grade_level
HAVING COUNT(*)>3;




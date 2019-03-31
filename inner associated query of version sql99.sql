SELECT last_name, department_name
FROM employees e
INNER JOIN departments d
ON d.`department_id`=e.`department_id`;



SELECT last_name, job_title 
FROM employees e
INNER JOIN jobs j
ON e.`job_id`=j.`job_id`
WHERE e.`last_name` LIKE'%e%';

 
SELECT * FROM locations ;
 
 
 
SELECT 
  city,
  COUNT(*) "部门个数" 
FROM
  departments d 
  INNER JOIN locations l 
    ON d.`location_id` = l.`location_id` 
GROUP BY city
HAVING 部门个数 > 3 ;



SELECT department_name,COUNT(*) "该部门人数"
FROM employees e
INNER JOIN departments d
ON e.`department_id`=d.`department_id`
GROUP BY department_name
HAVING COUNT(*)>3
ORDER BY COUNT(*) DESC;

SELECT last_name , department_name, job_title
FROM employees e 
INNER JOIN departments d ON e.`department_id`=d.`department_id`
INNER JOIN jobs j ON e.`job_id`=j.`job_id`
ORDER BY department_name DESC;


SELECT salary, grade_level
FROM employees e 
INNER JOIN job_grades g
ON e.salary BETWEEN g.`lowest_sal` AND g.`highest_sal`;


SELECT COUNT(*), grade_level
FROM employees e 
INNER JOIN job_grades g
ON e.salary BETWEEN g.`lowest_sal` AND g.`highest_sal`
GROUP BY grade_level
HAVING COUNT(*)>2;

USE girls；

SELECT * FROM beauty;
SELECT * FROM boys;

SELECT b.name, bo.*
FROM beauty b
LEFT JOIN boys bo
ON b.`boyfriend_id`=bo.`id`;

SELECT b.name, bo.*
FROM beauty b
LEFT JOIN boys bo
ON b.`boyfriend_id`=bo.`id`
WHERE bo.`id` IS NULL;

 
 
USE myemployees; 
 SELECT d.*, e.employee_id #哪个部门没有员工
 FROM departments d
 LEFT JOIN employees e
 ON d.`department_id`=e.`department_id`
 WHERE e.`employee_id` IS NULL;
 
 
 

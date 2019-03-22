USE girls; 
SELECT 
  NAME 女名, boyName 男名
FROM
  boys,
  beauty 
WHERE boys.id = beauty.boyfriend_id ;




SELECT last_name, department_name
FROM employees, departments
WHERE employees.`department_id`=departments.`department_id`;

SELECT last_name, department_name
FROM employees e, departments d
WHERE e.`department_id`=d.`department_id`;


SELECT last_name, e.job_id, job_title
FROM employees e, jobs j
WHERE e.job_id=j.`job_id`;


SELECT last_name, department_name, commission_pct
FROM employees e, departments d
WHERE e.`department_id`=d.`department_id`
AND e.commission_pct IS NOT NULL;



SELECT COUNT(*) 部门个数, city
FROM departments d, locations l
WHERE d.`location_id`=l.`location_id`
GROUP BY city;



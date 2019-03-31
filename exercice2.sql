USE myemployees;
SELECT last_name, d.department_id, department_name
FROM employees e , departments d
WHERE d.`department_id`=e.`department_id`; 

SELECT 
  job_id,
  location_id 
FROM
  employees e,
  departments d 
WHERE e.`department_id` = d.`location_id` 
  AND e.`department_id` = 90 ;



SELECT last_name, department_name, l.location_id, city
FROM employees e, departments d, locations l
WHERE e.`department_id`=d.`department_id` 
AND d.`location_id`=l.`location_id`
AND commission_pct IS NOT NULL;

SELECT last_name,job_id, d.department_id ,d.`department_name`,city
FROM employees e, departments d, locations l
WHERE e.`department_id`=d.`department_id` 
AND d.`location_id`=l.`location_id`
AND city='Toronto';


SELECT department_name, job_title, MIN(salary)
FROM employees e, departments d, jobs j
WHERE e.`department_id`=d.`department_id`
AND e.`job_id`=j.`job_id`
GROUP BY department_name, job_title;



SELECT *
FROM departments d, locations l
WHERE d.`location_id`=l.`location_id`;


SELECT country_id 国家编号, COUNT(*) #查询境内有大于2个部门的国家的国家编号
FROM departments d, locations l
WHERE d.`location_id`=l.`location_id`
GROUP BY country_id
HAVING COUNT(*)>2;

SELECT e.last_name, e.employee_id, m.manager_id, m.last_name
FROM employees e, employees m;










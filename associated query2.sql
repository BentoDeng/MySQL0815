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

USE myemployees;
SELECT department_name, d.manager_id, MIN(salary)
FROM departments d ,employees e
WHERE d.department_id=e.department_id
AND commission_pct IS NOT NULL
GROUP BY department_name, manager_id;


SELECT 
  job_title,
  COUNT(*) #查询每个工种的工种名和员工个数，按个数降序
FROM
  employees e,
  jobs j 
WHERE e.job_id = j.job_id 
GROUP BY job_title 
ORDER BY COUNT(*) DESC ;

SELECT last_name, department_name, city
FROM employees e, departments d ,locations l
WHERE e.department_id=d.department_id
AND d.location_id=l.location_id;

CREATE TABLE job_grades
(grade_level VARCHAR(3),
 lowest_sal  INT,
 highest_sal INT);

INSERT INTO job_grades
VALUES ('A', 1000, 2999);

INSERT INTO job_grades
VALUES ('B', 3000, 5999);

INSERT INTO job_grades
VALUES('C', 6000, 9999);

INSERT INTO job_grades
VALUES('D', 10000, 14999);

INSERT INTO job_grades
VALUES('E', 15000, 24999);

INSERT INTO job_grades
VALUES('F', 25000, 40000);




SELECT * FROM job_grades;


SELECT salary, grade_level
FROM employees e, job_grades g
WHERE salary BETWEEN g.lowest_sal AND g.highest_sal;





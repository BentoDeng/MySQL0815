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



SELECT e.employee_id,e.last_name,m.employee_id,m.last_name
FROM employees e,employees m
WHERE e.`employee_id`=m.`employee_id`;





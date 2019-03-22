USE myemployees;
SELECT AVG(salary) 各部门平均工资, department_id FROM employees
GROUP BY department_id;

SELECT MAX(salary) 每个工种最高工资, job_id FROM employees
GROUP BY job_id;

SELECT COUNT(*) 每个位置的部门个数, location_id FROM locations
GROUP BY location_id;


SELECT 
  AVG(salary) '邮箱中包含 a 的每个部门的平均工资',
  department_id 
FROM
  employees 
WHERE email LIKE '%a%'
GROUP BY department_id ;


SELECT MAX(salary) 每个领导手下有奖金的员工的最高工资, manager_id
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY manager_id;


SELECT COUNT(*),department_id
FROM employees
GROUP BY department_id
HAVING COUNT(*)>2;
/*
不能写成
SELECT COUNT(*),department_id
FROM employees
COUNT(*)>2 #因为这时候还没有分组
GROUP BY department_id;
*/





SELECT MAX(salary) AS '每个工种有奖金的员工的最高工资', job_id
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY job_id;

SELECT 
  MAX(salary) AS '每个工种有奖金的 (且工资大于 12000 的) 员工的最高工资',
  job_id 
FROM
  employees 
WHERE commission_pct IS NOT NULL 
GROUP BY job_id 
HAVING MAX(salary) > 12000 ;

SELECT MIN(salary), manager_id
FROM employees
WHERE manager_id>102
GROUP BY manager_id
HAVING MIN(salary)>5000;

SELECT COUNT(*), LENGTH(last_name) 姓名长度
FROM employees
GROUP BY 姓名长度
HAVING COUNT(*)>5;

SELECT AVG(salary), department_id,job_id
FROM employees
GROUP BY job_id, department_id;
#-------------------------------------------
SELECT AVG(salary), department_id,job_id
FROM employees
GROUP BY department_id,job_id;





SELECT AVG(salary) 均薪, department_id,job_id
FROM employees
WHERE department_id IS NOT NULL
GROUP BY department_id,job_id
HAVING 均薪>10000
ORDER BY 均薪 DESC;








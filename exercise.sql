USE myemployees;
SELECT DATEDIFF(MAX(hiredate),MIN(hiredate)) FROM employees;

SELECT 
  COUNT(*) 
FROM
  employees 
WHERE department_id = 90 ;



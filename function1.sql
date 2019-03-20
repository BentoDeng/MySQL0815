USE myemployees; 
SELECT 
  * 
FROM
  employees 
ORDER BY salary DESC ;


SELECT 
  * 
FROM
  employees 
WHERE department_id >= 90 
ORDER BY hiredate ASC ;



SELECT 
  *,
  salary * 12 * (1+ IFNULL(commission_pct, 0) )
FROM
  employees 
ORDER BY salary * 12 * (1+ IFNULL(commission_pct, 0)) DESC;
#--------------------------------------------------------------------
SELECT 
  *,
  salary * 12 * (1+ IFNULL(commission_pct, 0) ) 年薪 
FROM
  employees 
ORDER BY 年薪 DESC;


SELECT 
  last_name,
  salary,
  LENGTH(last_name) 
FROM
  employees 
ORDER BY LENGTH(last_name) ;


SELECT 
  * 
FROM
  employees 
ORDER BY salary,
  employee_id ;
  
SELECT 
  * 
FROM
  employees 
WHERE email LIKE "%e%" 
ORDER BY LENGTH(email) DESC,
  department_id ASC ;

SELECT UPPER('john');
SELECT LOWER('JOHN');
SELECT CONCAT(LOWER(last_name),"_",UPPER(first_name))FROM employees;


SELECT SUBSTR("李莫愁爱上了陆展元",7);
SELECT SUBSTR("李莫愁爱上了陆展元",1,3);

SELECT INSTR('杨不悔爱上了殷六侠','殷六侠') out_put;
SELECT INSTR('杨不悔爱上了殷六侠','殷六侠客') out_put;
SELECT INSTR('杨不悔爱上了殷六侠殷六侠','殷六侠') out_put;



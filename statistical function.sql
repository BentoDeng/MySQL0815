USE myemployees;
SELECT SUM(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT MIN(salary) FROM employees;
SELECT COUNT(commission_pct) FROM employees;

SELECT SUM(salary), 
ROUND(AVG(salary),2) ,
MAX(SALaRY) ,
MIN(saLARY) ,
COUNT(commission_pct) FROM employees;


SELECT SUM(last_name)FROM employees;#sum函数统计字符型无意义但不报错
SELECT MAX(last_name)FROM employees;#排序的字符意义可以理解为最大最小
SELECT SUM(hiredate)FROM employees;

SELECT SUM(commission_pct),AVG(commission_pct),SUM(commission_pct)/35,SUM(commission_pct)/107 FROM employees;
SELECT MAX(commission_pct),MIN(commission_pct) FROM employees;	

SELECT SUM(DISTINCT salary),SUM(salary) FROM employees;
SELECT COUNT(DISTINCT salary),COUNT(salary) FROM employees;



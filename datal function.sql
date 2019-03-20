SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();

SELECT YEAR(NOW());
SELECT YEAR("2098-4-5");
SELECT YEAR(hiredate) FROM employees;

SELECT MONTHNAME(hiredate) FROM employees;

SELECT STR_TO_DATE('1996-01-18','%Y-%c-%d');
SELECT 
  * 
FROM
  employees 
WHERE hiredate=STR_TO_DATE('17-12 1999', '%d-%m %Y') ;


SELECT DATE_FORMAT(NOW(),'%d日-%m月 -%y年');


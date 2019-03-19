USE myemployees ;

SELECT 
  * 
FROM
  employees 
WHERE salary >= 12000 ;



SELECT 
  last_name,
  department_id 
FROM
  employees ;

WHERE department_id<>90;
#---------------------------------
SELECT 
  last_name,
  department_id 
FROM
  employees ;

WHERE department_id!=90;
#----------------------------------
SELECT 
  last_name,
  department_id 
FROM
  employees ;

WHERE department_id<90 OR department_id>90;


SELECT 
  last_name,
  salary,
  commission_pct 
FROM
  employees 
WHERE salary>=10000 AND salary<=20000;
#-------------------------------
SELECT 
  last_name,
  salary,
  commission_pct 
FROM
  employees 
WHERE salary BETWEEN 10000 
  AND 20000 ;





SELECT 
  *
FROM
  employees 
WHERE NOT (
    department_id >= 90 
    AND department_id <= 110
  ) 
  OR salary > 15000 ;
#------------------------------------
SELECT 
  *
FROM
  employees 
WHERE NOT (
    department_id BETWEEN 90 
    AND 110
  ) 
  OR salary > 15000 ;
  
  
  
  
SELECT 
  last_name,
  job_id 
FROM
  employees 
WHERE job_id = "IT_PROT" 
  OR job_id = "AD_VP" 
  OR job_id = "AD_PRES" ;
#------------------------------------
SELECT 
  last_name,
  job_id 
FROM
  employees 
WHERE job_id IN ("IT_PROT",
  "AD_VP",
  "AD_PRES" );
  
#------------------------------------
SELECT 
  last_name,
  salary, 
  commission_pct
FROM
  employees 
WHERE commission_pct <=> NULL ;
#------------------------------------
SELECT 
  last_name,
  salary, 
  commission_pct
FROM
  employees 
WHERE commission_pct IS NULL ;


SELECT 
  last_name,
  salary,
  commission_pct 
FROM
  employees 
WHERE commission_pct IS NOT NULL ;






SELECT 
  last_name,
  salary 
FROM
  employees 
WHERE commission_pct IS NULL 
  AND salary < 12000 ;

SELECT 
  last_name,
  salary 
FROM
  employees 
WHERE job_id!="IT" 
  OR salary < 12000 ;
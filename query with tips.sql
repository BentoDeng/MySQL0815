/*
java中的加号+在MySQL中只有运算符功能
select 'john'+10
*/

SELECT 'john'*10

SELECT  CONCAT('John', 10);

SELECT 
  CONCAT(first_name, last_name) 姓名 
FROM
  employees ； 
  
  
 SELECT 9866+"1975";
 
SELECT 
  NULL + 9860 ;
  
  
DESC departments ;

  SELECT * FROM departments;






SELECT 
  CONCAT(
    `first_name`,',',
    `last_name`,',',
    `salary`, ',',
    `job_id`
  ) 
FROM
  employees ;
  
  
  
  
  
  
SELECT 
  IFNULL(commission_pct, 0) AS 奖金率,
  commission_pct 
FROM
  employees ;

  
 #--------------------------------------------

 SELECT 
  CONCAT(
    `first_name`,',',
    `last_name`,',',
    `salary`, ',',
    IFNULL(commission_pct,0)
  ) 
FROM
  employees ;


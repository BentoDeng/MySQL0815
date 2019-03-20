SELECT 
  IF(
    commission_pct IS NOT NULL,
    '有奖金，嘻嘻',
    '没奖金，呵呵'
  ) 
FROM
  employees ;


SELECT IF (10>5,'是','不是');

SELECT salary 原始工资,department_id,
CASE department_id 部门编号
WHEN 30 THEN salary*1.1
WHEN 40 THEN salary*1.2
WHEN 50 THEN salary*1.3
ELSE salary
END AS 新工资
FROM employees；

SELECT salary,
CASE
WHEN salary>20000 THEN'a'
WHEN salary>15000 THEN'b'
WHEN salary>10000 THEN'c'
ELSE 'd'
END 工资级别
FROM employees;


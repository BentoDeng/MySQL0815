SELECT TRIM(first_name) FROM employees;
SELECT TRIM('      Be     ntrix   ') out_put;
SELECT TRIM('a' FROM 'aaaaaaBe   aaa  ntrixaaaaa') out_put;
SELECT TRIM('aa' FROM 'aaaaaaBe   aaa  ntrixaaaaa') out_put;

SELECT LPAD(last_name,20,'大户人家') FROM employees;
SELECT RPAD(salary,13,'薪水不错') FROM employees;

SELECT REPLACE('张无忌爱上了周芷若','周芷若','赵敏');
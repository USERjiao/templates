#和分组函数一起的字段必须是groud by 后面的字段
SELECT MAX(salary),job_id
 FROM employees
 GROUP BY job_id
 
 SELECT AVG(salary),department_id
 FROM employees
 WHERE email LIKE '%a%'
 GROUP BY department_id
 
 SELECT MAX(salary),manager_id
 FROM employees
 WHERE commission_pct IS NOT NULL 
 GROUP BY manager_id


SELECT  COUNT(*),department_id
FROM employees
GROUP BY department_id
HAVING COUNT(*) >2




SELECT AVG(salary) ,department_id,job_id
FROM employees
GROUP BY job_id,department_id
ORDER BY AVG(salary) DESC


#连接查询，多表连接，不能出现笛卡尔乘积现象。
SELECT * FROM beauty
SELECT NAME,boyname FROM boys,beauty
WHERE beauty.`boyfriend_id`=boys.`id`

#多表连接是取交集连接的等值连接。








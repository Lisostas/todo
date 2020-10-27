1

SELECT DISTINCT status
FROM tasks

2

SELECT project_id, count(*) tasks_count
FROM tasks t
GROUP BY t.project_id
ORDER BY 2 DESC

3

SELECT count(*), p.name
FROM tasks t
JOIN projects p
ON t.project_id = p.id
GROUP BY t.project_id
ORDER BY p.name 

4

SELECT t.*
FROM tasks t, projects p
WHERE t.project_id = p.id 
AND p.name like 'N%'

5

SELECT p.name, count(*)
FROM projects p
LEFT JOIN tasks t
ON t.project_id = p.id
WHERE p.name like '%a%'
GROUP BY t.project_id

6

SELECT t.name, COUNT(*) AS tasks_count
FROM tasks t
GROUP BY t.name
HAVING  tasks_count > 1

7

SELECT t.name, count(*) tasks_count
FROM tasks t, projects p
WHERE t.project_id = p.id AND p.name = 'Garage'
GROUP BY t.name, t.status
HAVING tasks_count>1
ORDER BY tasks_count


8

SELECT p.name, count(*) tasks_completed
FROM tasks t, projects p
WHERE t.project_id = p.id
AND t.status='completed'
GROUP BY t.project_id
HAVING t.status>=4
ORDER BY t.project_id
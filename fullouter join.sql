USE girls
SELECT b.*, bo.*
FROM beauty b
FULL OUTER JOIN boys bo
ON b.boyfriend_id=bo.id


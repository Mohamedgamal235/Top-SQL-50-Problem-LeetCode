SELECT e.name, b.bonus
FROM Employee AS e
LEFT JOIN Bonus AS b 
ON e.empid = b.empid
WHERE bonus < 1000 OR bonus IS NULL ;
use employeeTraining;

select database();

SELECT
	e.employeeID AS employeeID,
	e.firstName AS employeeFirstName,
    e.lastName AS employeeLastName,
    s.employeeID AS supervisorID,
    s.firstName AS supervisorFirstName,
    s.lastName AS supervisorLastName
FROM employees e
JOIN employees s
    ON s.employeeID = e.supervisorID
ORDER BY s.employeeID;
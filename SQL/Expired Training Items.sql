use employeeTraining;

select database();

SELECT
    e.employeeID,
    e.firstName,
    e.lastName,
    c.certName,
    ec.expirationDate
FROM employee_certifications ec
JOIN employees e
    ON ec.employeeID = e.employeeID
JOIN certs c
	ON ec.certID = c.certID
WHERE ec.expirationDate < CURRENT_DATE()
ORDER BY e.lastName;
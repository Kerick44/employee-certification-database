use employeeTraining;

select database();

describe employees;

describe certs;

describe employee_certifications;

show tables;
    
SELECT
    e.employeeID,
    e.firstName,
    e.lastName,
    c.certName,
    ec.dateEarned,
    ec.expirationDate,
    CONCAT(s.firstName, ' ', s.lastName) AS supervisor
FROM employee_certifications ec
JOIN employees e
    ON ec.employeeID = e.employeeID
JOIN certs c
    ON ec.certID = c.certID
LEFT JOIN employees s
    ON e.supervisorID = s.employeeID;


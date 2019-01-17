--  Which sales agent made the most in sales over all?

SELECT "First Name", "Last Name", MAX(Sales) AS "Total Sales ($)"
FROM (
SELECT Employee.FirstName AS "First Name", Employee.LastName AS "Last Name", ROUND(SUM(Invoice.Total), 2) AS "Sales"
FROM Employee
JOIN Customer
ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice
ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Employee.EmployeeId
);
-- Provide a query that shows total sales made by each sales agent.

SELECT Employee.EmployeeId, Employee.FirstName, Employee.LastName, ROUND(SUM(Invoice.Total), 2) as "Total Sales ($)"
FROM Employee
JOIN Customer
ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice
ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Employee.EmployeeId

-- Jane: $833.04
-- Margaret: $775.4
-- Steve: $720.16
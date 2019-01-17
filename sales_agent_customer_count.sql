-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT Employee.FirstName AS "Employee FN", Employee.LastName AS "Employee LN", COUNT() AS "Total Customers"
FROM Customer
JOIN Employee
ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.EmployeeId
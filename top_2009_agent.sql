-- Which sales agent made the most in sales in 2009?

SELECT "First Name", "Last Name", MAX(Sales) AS "Total Sales ($)"
FROM (
SELECT Employee.FirstName AS "First Name", Employee.LastName AS "Last Name", ROUND(SUM(Invoice.Total), 2) AS "Sales"
FROM Employee
JOIN Customer
ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice
ON Invoice.CustomerId = Customer.CustomerId
WHERE Invoice.InvoiceDate BETWEEN DATETIME("2009-01-01 00:00:00") AND DATETIME("2009-12-31 23:59:59")
GROUP BY Employee.EmployeeId
);
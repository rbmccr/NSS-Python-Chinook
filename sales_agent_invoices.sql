-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT Invoice.InvoiceId,  Employee.FirstName, Employee.LastName
FROM Invoice
LEFT JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
LEFT JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId

-- returns 412 rows
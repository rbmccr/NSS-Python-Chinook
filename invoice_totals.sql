-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers

SELECT Invoice.Total as "Invoice Total", Invoice.BillingCountry, Customer.FirstName, Customer.LastName, Employee.FirstName as "Employee First Name", Employee.LastName as "Employee Last Name"
FROM Invoice
LEFT JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
LEFT JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId

-- returns 412 rows
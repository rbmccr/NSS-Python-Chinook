-- Which country's customers spent the most?

SELECT "Country", MAX("Sales") AS "Total Sales ($)"
FROM (
SELECT Invoice.BillingCountry as "Country", SUM(Invoice.Total) AS "Sales"
FROM Invoice
GROUP BY Invoice.BillingCountry
);
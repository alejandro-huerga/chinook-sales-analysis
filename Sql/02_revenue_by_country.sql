-- Question: which countries generate the most revenue?
-- Table: Invoice
SELECT
    BillingCountry,
    COUNT(*) AS num_invoices,
    ROUND(SUM(Total), 2) AS revenue,
    ROUND(AVG(Total), 2) AS avg_invoice
FROM Invoice
GROUP BY BillingCountry
ORDER BY revenue DESC, BillingCountry;
-- Question: how does revenue evolve year over year?
-- Table: Invoice
SELECT
    strftime('%Y', InvoiceDate) AS year,
    COUNT(*) AS num_invoices,
    ROUND(SUM(Total), 2) AS revenue,
    ROUND(AVG(Total), 2) AS avg_invoice
FROM Invoice
GROUP BY strftime('%Y', InvoiceDate)
ORDER BY year;
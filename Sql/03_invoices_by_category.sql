-- Question: how much do low, medium and high-value invoices weigh?
-- Table: Invoice
-- Note: the thresholds (low < 2, medium < 7, high >= 7) are arbitrary
SELECT
    CASE
        WHEN Total < 2 THEN 'low'
        WHEN Total < 7 THEN 'medium'
        ELSE 'high'
    END AS category,
    COUNT(*) AS num_invoices,
    ROUND(SUM(Total), 2) AS revenue
FROM Invoice
GROUP BY category
ORDER BY revenue DESC;

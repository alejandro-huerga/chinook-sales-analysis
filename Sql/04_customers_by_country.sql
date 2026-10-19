-- Question: where are the customers?
-- Table: Customer
SELECT
    Country,
    COUNT(*) AS num_customers,
    COUNT(Company) AS with_company
FROM Customer
GROUP BY Country
ORDER BY num_customers DESC, Country;
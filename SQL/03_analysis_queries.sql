USE LoanRiskDB;
GO

-- Overall Default Rate
SELECT
    COUNT(*) AS Total_Loans,
    SUM(default_flag) AS Defaults,
    ROUND(100.0 * SUM(default_flag) / COUNT(*),2) AS Default_Rate
FROM Loans_Clean
WHERE default_flag IS NOT NULL;





-- Default Rate by Loan Term
SELECT
    term_months,
    COUNT(*) AS Loans,
    SUM(default_flag) AS Defaults,
    ROUND(100.0 * SUM(default_flag)/COUNT(*),2) AS Default_Rate
FROM Loans_Clean
WHERE default_flag IS NOT NULL
GROUP BY term_months;


-- Default Risk by Income Group
SELECT
    CASE
        WHEN annual_income < 30000 THEN 'Low Income'
        WHEN annual_income BETWEEN 30000 AND 70000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS Income_Group,
    COUNT(*) AS Loans,
    SUM(default_flag) AS Defaults,
    ROUND(100.0 * SUM(default_flag)/COUNT(*),2) AS Default_Rate
FROM Loans_Clean
WHERE default_flag IS NOT NULL
GROUP BY
    CASE
        WHEN annual_income < 30000 THEN 'Low Income'
        WHEN annual_income BETWEEN 30000 AND 70000 THEN 'Middle Income'
        ELSE 'High Income'
    END;



-- High-Risk Loan Purpose
SELECT
    purpose,
    COUNT(*) AS Loans,
    SUM(default_flag) AS Defaults,
    ROUND(100.0 * SUM(default_flag)/COUNT(*),2) AS Default_Rate
FROM Loans_Clean
WHERE default_flag IS NOT NULL
GROUP BY purpose
ORDER BY Default_Rate DESC;


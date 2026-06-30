/*
==========================================================
Project : Bank Loan Risk Analytics
Phase   : Geographic & Time Analysis
==========================================================
*/

USE bank_loan_risk;

--Top 10 States by Loan Volume
SELECT
    addr_state,
    COUNT(*) AS total_loans
FROM loan_data
GROUP BY addr_state
ORDER BY total_loans DESC
LIMIT 10;


--Top 10 States by Default Rate
SELECT
    addr_state,
    COUNT(*) AS total_loans,
    ROUND(AVG(default_flag) * 100,2) AS default_rate
FROM loan_data
GROUP BY addr_state
HAVING COUNT(*) >= 100
ORDER BY default_rate DESC
LIMIT 10;


-- Lending Trend by Year
SELECT
    issue_year,
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_amnt),2) AS total_amount
FROM loan_data
GROUP BY issue_year
ORDER BY issue_year;


--Default Trend by Year
SELECT
    issue_year,
    ROUND(AVG(default_flag) * 100,2) AS default_rate
FROM loan_data
GROUP BY issue_year
ORDER BY issue_year;


--
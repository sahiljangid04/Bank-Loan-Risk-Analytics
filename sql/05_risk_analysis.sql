/*
==========================================================
Project : Bank Loan Risk Analytics
Phase   : Risk Analysis

Objective:
Analyze borrower risk using loan grades,
credit score, income and interest rate.

Author: Sahil Jangid
==========================================================
*/


-- Default Rate by Loan Grade
SELECT
    grade,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS default_loans,
    ROUND(AVG(default_flag) * 100, 2) AS default_rate
FROM loan_data
GROUP BY grade
ORDER BY grade;


--Default Rate by Income Group
SELECT
    income_group,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS default_loans,
    ROUND(AVG(default_flag) * 100, 2) AS default_rate
FROM loan_data
GROUP BY income_group
ORDER BY default_rate DESC;

-- Default Rate by Interest Rate Group
SELECT
    interest_rate_group,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS default_loans,
    ROUND(AVG(default_flag) * 100, 2) AS default_rate
FROM loan_data
GROUP BY interest_rate_group
ORDER BY default_rate DESC;


--Average Credit Score by Loan Grade
SELECT
    grade,
    ROUND(AVG(credit_score),1) AS average_credit_score
FROM loan_data
GROUP BY grade
ORDER BY grade;


-- Highest Risk Loan Purpose
SELECT
    purpose,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS default_loans,
    ROUND(AVG(default_flag) * 100,2) AS default_rate
FROM loan_data
GROUP BY purpose
HAVING COUNT(*) >= 100
ORDER BY default_rate DESC;
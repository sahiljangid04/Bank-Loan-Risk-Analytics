/*
====================================================
Phase 6
Data Validation
====================================================
*/

USE bank_loan_risk;

-- Total Records

SELECT COUNT(*) AS total_records
FROM loan_data;

-- Preview Data

SELECT *
FROM loan_data
LIMIT 10;

-- Check Missing Values

SELECT
SUM(loan_amnt IS NULL) AS loan_amount_nulls,
SUM(int_rate IS NULL) AS interest_rate_nulls,
SUM(annual_inc IS NULL) AS annual_income_nulls,
SUM(grade IS NULL) AS grade_nulls,
SUM(default_flag IS NULL) AS default_nulls
FROM loan_data;

-- Loan Status Distribution

SELECT
loan_status,
COUNT(*) AS total_loans
FROM loan_data
GROUP BY loan_status
ORDER BY total_loans DESC;

-- Default Distribution

SELECT
default_flag,
COUNT(*) AS total
FROM loan_data
GROUP BY default_flag;
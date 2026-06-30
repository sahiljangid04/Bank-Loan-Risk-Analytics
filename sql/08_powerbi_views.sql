

/*
==========================================================
Project : Bank Loan Risk Analytics
Phase   : Power BI Views

Objective:
Create reusable SQL views that Power BI will use
as its primary data source.

Author: Sahil Jangid
==========================================================
*/

USE bank_loan_risk;

-- ======================================================
-- View 1 : Executive Portfolio Summary
-- ======================================================

DROP VIEW IF EXISTS vw_portfolio_summary;

CREATE VIEW vw_portfolio_summary AS
SELECT
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_amnt),2) AS total_loan_amount,
    ROUND(AVG(loan_amnt),2) AS average_loan_amount,
    ROUND(AVG(int_rate),2) AS average_interest_rate,
    ROUND(AVG(default_flag) * 100,2) AS default_rate
FROM loan_data;

-- ======================================================
-- View 2 : Customer Analysis
-- ======================================================

DROP VIEW IF EXISTS vw_customer_analysis;

CREATE VIEW vw_customer_analysis AS
SELECT
    income_group,
    home_ownership,
    purpose,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_amnt),2) AS average_loan_amount,
    ROUND(AVG(default_flag) * 100,2) AS default_rate
FROM loan_data
GROUP BY income_group, home_ownership, purpose;

-- ======================================================
-- View 3 : Risk Analysis
-- ======================================================

DROP VIEW IF EXISTS vw_risk_analysis;

CREATE VIEW vw_risk_analysis AS
SELECT
    grade,
    interest_rate_group,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS default_loans,
    ROUND(AVG(default_flag) * 100,2) AS default_rate,
    ROUND(AVG(credit_score),1) AS average_credit_score
FROM loan_data
GROUP BY grade, interest_rate_group;

-- ======================================================
-- View 4 : State Analysis
-- ======================================================

DROP VIEW IF EXISTS vw_state_analysis;

CREATE VIEW vw_state_analysis AS
SELECT
    addr_state,
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_amnt),2) AS total_loan_amount,
    ROUND(AVG(loan_amnt),2) AS average_loan_amount,
    ROUND(AVG(default_flag) * 100,2) AS default_rate
FROM loan_data
GROUP BY addr_state;

-- ======================================================
-- View 5 : Yearly Trend
-- ======================================================

DROP VIEW IF EXISTS vw_yearly_trend;

CREATE VIEW vw_yearly_trend AS
SELECT
    issue_year,
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_amnt),2) AS total_loan_amount,
    ROUND(AVG(int_rate),2) AS average_interest_rate,
    ROUND(AVG(default_flag) * 100,2) AS default_rate
FROM loan_data
GROUP BY issue_year;

-- ======================================================
-- Verify Views
-- ======================================================

SELECT * FROM vw_portfolio_summary;
SELECT * FROM vw_customer_analysis LIMIT 10;
SELECT * FROM vw_risk_analysis LIMIT 10;
SELECT * FROM vw_state_analysis LIMIT 10;
SELECT * FROM vw_yearly_trend;
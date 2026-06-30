/*
==========================================================
Project : Bank Loan Risk Analytics
Phase   : Advanced SQL

Objective:
Demonstrate advanced SQL techniques including
CTEs, Window Functions, Ranking and Running Totals.

Author: Sahil Jangid
==========================================================
*/

USE bank_loan_risk;


-- Which states have the highest default rate?
WITH state_risk AS (
    SELECT
        addr_state,
        COUNT(*) AS total_loans,
        ROUND(AVG(default_flag) * 100,2) AS default_rate
    FROM loan_data
    GROUP BY addr_state
    HAVING COUNT(*) >= 100
)

SELECT *
FROM state_risk
ORDER BY default_rate DESC
LIMIT 10;


-- Which loan grades are the riskiest?
SELECT
    grade,
    COUNT(*) AS total_loans,
    ROUND(AVG(default_flag) * 100,2) AS default_rate,

    RANK() OVER(
        ORDER BY AVG(default_flag) DESC
    ) AS risk_rank

FROM loan_data
GROUP BY grade;


-- Which are the largest loans issued in each state?
WITH ranked_loans AS (
SELECT
    addr_state,
    loan_amnt,
    annual_inc,
    grade,

    ROW_NUMBER() OVER(
        PARTITION BY addr_state
        ORDER BY loan_amnt DESC
    ) AS row_num

FROM loan_data
)
SELECT *
FROM ranked_loans
WHERE row_num <= 5
ORDER BY addr_state, row_num;


-- Which states issue the highest average loan amount?
SELECT
    addr_state,
    ROUND(AVG(loan_amnt),2) AS average_loan,
    DENSE_RANK() OVER(
        ORDER BY AVG(loan_amnt) DESC
    ) AS state_rank
FROM loan_data
GROUP BY addr_state;


-- How has the cumulative lending portfolio grown?
WITH yearly_loans AS (
SELECT
    issue_year,
    SUM(loan_amnt) AS yearly_amount
FROM loan_data
GROUP BY issue_year
)
SELECT
    issue_year,
    ROUND(yearly_amount,2) AS yearly_amount,
    ROUND(
        SUM(yearly_amount)
        OVER(
            ORDER BY issue_year
        ),
    2) AS cumulative_loan_amount
FROM yearly_loans;


-- How can borrowers be categorized into risk bands?
SELECT
    grade,
    credit_score,
    int_rate,
    CASE
        WHEN grade IN ('A','B')
             AND credit_score >= 700
        THEN 'Low Risk'
        WHEN grade IN ('C','D')
        THEN 'Medium Risk'
        ELSE 'High Risk'
    END AS risk_category
FROM loan_data
LIMIT 100;


-- Which borrowers received the largest loans?
SELECT
    annual_inc,
    loan_amnt,
    grade,
    credit_score,
    ROW_NUMBER() OVER(
        ORDER BY loan_amnt DESC
    ) AS loan_rank
FROM loan_data
LIMIT 10;
-- How large is the current loan portfolio? 
USE bank_loan_risk;

SELECT
COUNT(*) AS total_loans,
ROUND(SUM(loan_amnt),2) AS total_loan_amount,
ROUND(AVG(loan_amnt),2) AS average_loan_amount,
ROUND(AVG(int_rate),2) AS average_interest_rate,
ROUND(AVG(default_flag)*100,2) AS default_rate
FROM loan_data;


--Loan Status Distribution
SELECT
loan_status,
COUNT(*) AS total_loans
FROM loan_data
GROUP BY loan_status
ORDER BY total_loans DESC;


--Average Loan Amount by Grade
SELECT
grade,
ROUND(AVG(loan_amnt),2) AS average_loan
FROM loan_data
GROUP BY grade
ORDER BY grade;


--Average Interest Rate by Grade
SELECT
grade,
ROUND(AVG(int_rate),2) AS average_interest_rate
FROM loan_data
GROUP BY grade
ORDER BY grade;
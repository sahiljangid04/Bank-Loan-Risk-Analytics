--Income Group Distribution
SELECT
income_group,
COUNT(*) AS borrowers
FROM loan_data
GROUP BY income_group
ORDER BY borrowers DESC;


--Home Ownership
SELECT
home_ownership,
COUNT(*) AS borrowers
FROM loan_data
GROUP BY home_ownership
ORDER BY borrowers DESC;


--Employment Length
SELECT
emp_length,
COUNT(*) AS borrowers
FROM loan_data
GROUP BY emp_length
ORDER BY borrowers DESC;


--Loan Purpose
SELECT
purpose,
COUNT(*) AS total_loans
FROM loan_data
GROUP BY purpose
ORDER BY total_loans DESC;


--
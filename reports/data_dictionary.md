

# Data Dictionary

## Project
**Bank Loan Risk Analytics – Loan Default Prediction**

This document describes the variables used throughout the analytics, SQL, Power BI, Machine Learning, and Streamlit phases of the project.

---

## Dataset Overview

- **Source:** Lending Club Loan Dataset
- **Domain:** Banking / Consumer Lending
- **Target Variable:** `default_flag`
- **Records:** ~2.26 Million
- **Primary Use:** Loan default risk prediction and business analytics.

---

# Feature Dictionary

| Feature | Data Type | Description |
|----------|-----------|-------------|
| loan_amnt | Numeric | Total loan amount requested by the borrower. |
| term | Integer | Loan tenure in months (36 or 60). |
| int_rate | Numeric | Annual interest rate charged on the loan (%). |
| installment | Numeric | Estimated monthly loan installment. |
| grade | Categorical | Lending Club assigned loan grade (A–G). |
| purpose | Categorical | Purpose of the loan (debt consolidation, home improvement, etc.). |
| annual_inc | Numeric | Borrower's annual income. |
| emp_length | Categorical | Employment length of the borrower. |
| home_ownership | Categorical | Home ownership status (Rent, Mortgage, Own, etc.). |
| verification_status | Categorical | Income verification status. |
| credit_score | Numeric | Engineered credit score based on borrower credit information. |
| dti | Numeric | Debt-to-Income ratio. |
| open_acc | Integer | Number of open credit accounts. |
| revol_util | Numeric | Revolving credit utilization percentage. |
| total_acc | Integer | Total number of credit accounts. |
| mort_acc | Integer | Number of mortgage accounts. |
| income_group | Categorical | Engineered income category (Low, Middle, High, Very High). |
| interest_rate_group | Categorical | Engineered interest-rate category (Low, Moderate, High, Very High). |
| application_type | Categorical | Individual or Joint loan application. |
| default_flag | Binary | Target variable (0 = Fully Paid, 1 = Default/Charged Off). |

---

# Engineered Features

| Feature | Logic |
|----------|-------|
| installment | Estimated monthly installment derived from loan amount and term. |
| income_group | Derived from annual income using predefined income bands. |
| interest_rate_group | Derived from interest rate using predefined rate bands. |
| credit_score | Engineered borrower credit score used for predictive modeling. |
| default_flag | Created from loan status for binary classification. |

---

# Target Variable

**default_flag**

| Value | Meaning |
|------:|---------|
| 0 | Loan Fully Paid / Non-Default |
| 1 | Loan Default / Charged Off |

---

# Data Usage Across the Project

| Phase | Usage |
|-------|-------|
| Python | Data cleaning, feature engineering, EDA |
| SQL | Business KPI analysis and reporting |
| Power BI | Interactive dashboards and executive reporting |
| Machine Learning | Loan default prediction using Logistic Regression and Random Forest |
| Streamlit | Interactive loan risk prediction web application |

---

# Notes

- Missing values were handled during preprocessing.
- Categorical variables were label encoded for machine learning.
- Feature engineering logic used in model training is reused in the Streamlit application to ensure prediction consistency.
- The deployed production model is the optimized Logistic Regression model.
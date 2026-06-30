# Bank Loan Risk Analytics

<!-- Badges -->
![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Database-4479A1)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?logo=powerbi&logoColor=black)
![Streamlit](https://img.shields.io/badge/Streamlit-FF4B4B?logo=streamlit&logoColor=white)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-F7931E?logo=scikit-learn&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)

[![Live Demo](https://img.shields.io/badge/Live%20Demo-Streamlit-success?logo=streamlit)](https://bank-loan-risk-analytics.streamlit.app/)

---

## Project Overview

Bank Loan Risk Analytics is a comprehensive end-to-end data analytics project designed to assess and visualize lending risk using real-world Lending Club data. The project leverages advanced data wrangling, exploratory data analysis, business intelligence, and machine learning techniques to empower banks and financial institutions to make informed lending decisions.

This repository showcases a robust workflow integrating SQL-based data exploration, Power BI dashboards for business insights, and a machine learning-powered Streamlit web app for real-time loan risk prediction. The project demonstrates full-cycle analytics capabilities, from raw data to actionable insights and deployment.

---

## Technology Stack

| Technology    | Purpose                                     |
|---------------|---------------------------------------------|
| Python        | Data cleaning, feature engineering, EDA, machine learning |
| SQL           | Business analysis and data querying          |
| Power BI      | Interactive dashboards and reporting         |
| Scikit-learn  | Machine learning model development            |
| Streamlit     | Web app deployment and visualization          |

---

## Project Workflow

Raw Lending Club Dataset  
        │  
        ▼  
Python Data Cleaning  
        │  
        ▼  
Feature Engineering  
        │  
        ▼  
Exploratory Data Analysis  
        │  
        ▼  
SQL Business Analysis  
        │  
        ▼  
Power BI Dashboard  
        │  
        ▼  
Machine Learning  
        │  
        ▼  
Streamlit Web Application  

---

## Repository Structure

```
Bank-Loan-Risk-Analytics/
│
├── assets/
│   └── python/
├── data/
│   ├── raw/
│   └── processed/
├── models/
├── notebooks/
├── powerbi/
├── reports/
├── sql/
├── streamlit/
├── LICENSE
├── README.md
├── project_journal.md
└── requirements.txt
```

---

## Dataset

- **Raw Dataset:** 2,260,701 rows × 151 columns  
- **Final Analytics Dataset:** 2,260,638 rows × 36 columns  
- **SQL Sample Dataset:** 150,000 rows  

The dataset contains detailed loan application and performance data used for risk modeling and business insights.

---

## Key Business Insights

- Borrower annual income and credit score are strong predictors of loan default risk.  
- Loans with higher interest rates and longer terms have increased default rates.  
- Debt-to-income ratio above 40% correlates with higher risk of default.  
- Geographic regions show significant variance in loan performance.  
- Early delinquencies are strong indicators of future default.

---

## SQL Business Analysis

Extensive SQL queries were used for data cleaning, feature engineering, and cohort segmentation. Key analyses included default rate by loan grade, state-wise risk profiling, and time-series delinquency trends, enabling targeted business strategies.

---

## Power BI Dashboard

Interactive dashboards provide business users with at-a-glance insights into portfolio health, risk distribution, and loan performance.

| Dashboard View        | Screenshot                                   |
|----------------------|----------------------------------------------|
| Portfolio Overview   | ![Portfolio Overview](assets/dashboard1.png) |
| Risk Segmentation    | ![Risk Segmentation](assets/dashboard2.png)  |
| Geographic Analysis  | ![Geographic Analysis](assets/dashboard3.png)|
| Time-Series Trends   | ![Time Trends](assets/dashboard4.png)        |

---

## Machine Learning

The deployed model is an **Optimized Logistic Regression** classifier trained to predict loan default risk.

**Performance Metrics:**

| Metric    | Value    |
|-----------|----------|
| Accuracy  | 70.78%   |
| Precision | 23.43%   |
| Recall    | 54.84%   |
| F1 Score  | 32.83%   |
| ROC-AUC   | 70.34%   |

---

## Streamlit Application

The Streamlit web app enables users to input applicant data and receive instant risk predictions based on the trained machine learning model. The app visualizes risk contributors and provides actionable recommendations for loan officers.

**Live Demo:** [https://bank-loan-risk-analytics.streamlit.app/](https://bank-loan-risk-analytics.streamlit.app/)

---

## Documentation

- [Business Insights](reports/business_insights.md)  
- [Data Dictionary](reports/data_dictionary.md)  
- [Portfolio Summary](reports/portfolio_summary.md)  

---

## Installation & Local Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/Bank-Loan-Risk-Analytics.git
   cd Bank-Loan-Risk-Analytics
   ```
2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```
3. **Run Streamlit app locally:**
   ```bash
   cd streamlit
   streamlit run app.py
   ```
4. **Open Power BI dashboard:**  
   Import dashboard files from the `powerbi/` folder in Power BI Desktop.

---

## Future Improvements

- Expand model to multi-class risk levels  
- Integrate real-time data pipelines  
- Add advanced explainability (SHAP, LIME)  
- Enhance dashboard with predictive analytics  
- Support additional financial products  

---

## Author

**Sahil Jangid**  
[GitHub](https://github.com/your-github) | [LinkedIn](https://linkedin.com/in/your-linkedin)

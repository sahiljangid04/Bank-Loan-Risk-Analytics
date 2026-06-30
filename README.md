# Bank Loan Risk Analytics

[![Python](https://img.shields.io/badge/Python-3.8-blue?logo=python)](https://www.python.org/)
[![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue?logo=postgresql)](https://www.postgresql.org/)
[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=microsoft-power-bi)](https://powerbi.microsoft.com/)
[![Machine Learning](https://img.shields.io/badge/Machine%20Learning-Scikit--Learn-orange?logo=scikit-learn)](https://scikit-learn.org/)
[![Streamlit](https://img.shields.io/badge/Streamlit-App-red?logo=streamlit)](https://streamlit.io/)

[![Live Demo](https://img.shields.io/badge/Live%20Demo-Streamlit-success?logo=streamlit)](https://bank-loan-risk-analytics.streamlit.app/)

---

## Project Overview

This repository contains a comprehensive analytics project focused on assessing and modeling bank loan risk. The project integrates Python data processing, SQL business analysis, Power BI visualization, machine learning modeling, and Streamlit deployment to deliver actionable insights and a user-friendly risk assessment tool.

---

## Technology Stack

| Technology        | Description                           |
|-------------------|-------------------------------------|
| Python            | Data cleaning, feature engineering, EDA, machine learning |
| SQL               | Business analysis and data querying |
| Power BI          | Interactive dashboards and reporting |
| Scikit-learn      | Machine learning model development  |
| Streamlit         | Web app deployment and visualization |

---

## Project Workflow

```mermaid
graph LR
    A[Raw Dataset] --> B[Python Data Cleaning]
    B --> C[Feature Engineering]
    C --> D[Exploratory Data Analysis (EDA)]
    D --> E[SQL Business Analysis]
    E --> F[Power BI Dashboard]
    F --> G[Machine Learning]
    G --> H[Streamlit Deployment]
```

---

## Dataset

- **Raw Dataset:** 2,260,701 rows × 151 columns  
- **Final Analytics Dataset:** 2,260,638 rows × 36 columns  
- **Sample Dataset:** 150,000 rows for SQL analysis  

The dataset contains detailed loan application and performance data used for risk modeling and business insights.

---

## Repository Structure

```
Bank-Loan-Risk-Analytics/
│
├── assets/
│   └── python/
├── data/
│   ├── processed/
│   └── raw/
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

## Repository Highlights

- **Python:** Data cleaning, feature engineering, exploratory data analysis, and machine learning model development.  
- **SQL:** Business analysis using PostgreSQL with complex queries on a sample dataset.  
- **Power BI:** Interactive dashboards visualizing key insights for stakeholders.  
- **Machine Learning:** Optimized Logistic Regression model for loan risk prediction with performance metrics.  
- **Streamlit:** User-friendly web application for loan risk evaluation and visualization.

---

## Data Cleaning & Preprocessing

Performed extensively in Python using pandas and numpy. This step includes handling missing values, data type conversions, and feature engineering to prepare the dataset for analysis and modeling.

---

## Exploratory Data Analysis (EDA)

Conducted in Python to understand data distributions, relationships, and identify key risk factors through visualizations and statistical summaries.

---

## SQL Business Analysis

Performed on a 150,000-row sample dataset to generate business insights, segment customers, and support dashboard visualizations.

---

## Power BI Dashboard

Interactive dashboards created to visualize loan risk, customer segments, and key performance indicators.

### Screenshots:

![Power BI Dashboard 1](assets/powerbi/dashboard1.png)  
![Power BI Dashboard 2](assets/powerbi/dashboard2.png)  
![Power BI Dashboard 3](assets/powerbi/dashboard3.png)  
![Power BI Dashboard 4](assets/powerbi/dashboard4.png)  

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

The Streamlit app provides an interactive interface for users to input loan application data and receive risk predictions along with visual insights.

### Screenshot:

![Streamlit Application](assets/streamlit/app_screenshot.png)  

---

## Installation

To set up the project locally, clone the repository and install dependencies:

```bash
git clone https://github.com/sahil-jangid/Bank-Loan-Risk-Analytics.git
cd Bank-Loan-Risk-Analytics
pip install -r requirements.txt
```

---

## Usage

- Use Python scripts and notebooks in the `notebooks/` and `assets/python/` directories for data processing and modeling.  
- Run SQL queries located in the `sql/` folder on the sample dataset for business analysis.  
- Open the Power BI dashboard files in the `powerbi/` folder to explore visualizations.  
- Launch the Streamlit app from the `streamlit/` directory:

```bash
streamlit run streamlit/app.py
```

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Project Journal

Detailed notes and progress logs can be found in `project_journal.md`.

# Bank Loan Risk Analytics

<!-- Badges -->
![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?logo=powerbi&logoColor=black)
![Streamlit](https://img.shields.io/badge/Streamlit-FF4B4B?logo=streamlit&logoColor=white)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-F7931E?logo=scikit-learn&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)

---

## Project Overview

Bank Loan Risk Analytics is a comprehensive end-to-end data analytics project designed to assess and visualize lending risk using real-world Lending Club data. The project leverages advanced data wrangling, exploratory data analysis, business intelligence, and machine learning techniques to empower banks and financial institutions to make informed lending decisions.

This repository showcases a robust workflow integrating SQL-based data exploration, Power BI dashboards for business insights, and a machine learning-powered Streamlit web app for real-time loan risk prediction. The project demonstrates full-cycle analytics capabilities, from raw data to actionable insights and deployment.

---

## Live Demo

**Try the interactive Streamlit web app:**  
[https://bank-loan-risk-analytics.streamlit.app/](https://bank-loan-risk-analytics.streamlit.app/)

---

## Business Problem

Financial institutions face significant risks when granting loans, as borrower defaults can lead to financial losses. Accurately identifying high-risk applicants before loan approval is crucial for minimizing non-performing assets and optimizing lending strategies.

---

## Solution Overview

This project provides a data-driven solution by:
- Analyzing historical loan data to uncover risk patterns
- Building interactive dashboards for business monitoring
- Developing machine learning models to predict loan default probability
- Deploying a user-friendly web application for instant risk assessment

---

## Technology Stack

| Technology      | Logo                                                                 |
|----------------|----------------------------------------------------------------------|
| Python         | <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" width="32"/> |
| SQL (PostgreSQL)| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" width="32"/> |
| Power BI       | <img src="https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/powerbi.svg" width="32"/> |
| Streamlit      | <img src="https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/streamlit.svg" width="32"/> |
| Scikit-learn   | <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/scikit-learn/scikit-learn-original.svg" width="32"/> |
| Pandas         | <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/pandas/pandas-original.svg" width="32"/> |
| Jupyter        | <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jupyter/jupyter-original.svg" width="32"/> |

---

## Project Workflow

```text
            +-------------------+
            |  Raw Lending Club |
            |      Dataset      |
            +--------+----------+
                     |
                     v
         +------------------------+
         |   Data Cleaning &      |
         |   Preprocessing (SQL)  |
         +----------+-------------+
                     |
                     v
         +------------------------+
         |  Exploratory Data      |
         |  Analysis (Python)     |
         +----------+-------------+
                     |
          +----------+----------+
          |                     |
          v                     v
 +-------------------+   +-------------------+
 | Power BI          |   | ML Model Training |
 | Dashboards        |   | (scikit-learn)    |
 +--------+----------+   +--------+----------+
          |                     |
          |                     v
          |           +---------------------+
          |           | Streamlit App       |
          +---------> | (Risk Prediction)   |
                      +---------------------+
```

---

## Project Structure

```text
Bank-Loan-Risk-Analytics/
├── data/
│   └── lending_club_data.csv
├── notebooks/
│   └── eda.ipynb
├── sql/
│   └── analysis_queries.sql
├── powerbi/
│   └── dashboard.pbix
├── streamlit_app/
│   └── app.py
├── assets/
│   ├── dashboard1.png
│   ├── dashboard2.png
│   ├── dashboard3.png
│   └── dashboard4.png
├── README.md
└── requirements.txt
```

---

## Dataset Overview

- **Source:** Lending Club public loan data
- **Records:** ~2,260,000 loans (2.26M)
- **Features:** 145+ columns including borrower demographics, credit history, loan terms, payment status, and more
- **Period:** 2007–2018

---

## Key Business Insights

- Borrower annual income and credit score are strong predictors of loan default risk.
- Loans with higher interest rates and longer terms have increased default rates.
- Debt-to-income ratio above 40% correlates with higher risk of default.
- Geographic regions show significant variance in loan performance.
- Early delinquencies are strong indicators of future default.

---

## SQL Analysis

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

## Machine Learning Results

| Metric      | Value      |
|-------------|------------|
| Accuracy    | 70.78%     |
| Precision   | 23.43%     |
| Recall      | 54.84%     |
| F1 Score    | 32.83%     |
| ROC-AUC     | 70.34%     |

Model: Random Forest Classifier (after feature selection & hyperparameter tuning)

---

## Streamlit Application

The Streamlit web app enables users to input applicant data and receive instant risk predictions based on the trained machine learning model. The app visualizes risk contributors and provides actionable recommendations for loan officers.

**Live Demo:** [https://bank-loan-risk-analytics.streamlit.app/](https://bank-loan-risk-analytics.streamlit.app/)

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
   cd streamlit_app
   streamlit run app.py
   ```
4. **Open Power BI dashboard:**  
   Import `dashboard.pbix` from the `powerbi/` folder in Power BI Desktop.

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

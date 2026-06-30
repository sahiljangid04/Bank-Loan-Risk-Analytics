import streamlit as st
import joblib
import pandas as pd

st.set_page_config(
    page_title="Bank Loan Risk Analytics | Sahil Jangid",
    page_icon="🏦",
    layout="wide"
)

from pathlib import Path

# Load custom CSS if available
css_path = Path(__file__).parent / "style.css"
if css_path.exists():
    with open(css_path) as f:
        st.markdown(f"<style>{f.read()}</style>", unsafe_allow_html=True)

@st.cache_resource
def load_artifacts():
    base_dir = Path(__file__).resolve().parent
    project_root = base_dir.parent
    model_dir = project_root / "models"

    model = joblib.load(model_dir / "final_model.pkl")
    scaler = joblib.load(model_dir / "scaler.pkl")
    encoders = joblib.load(model_dir / "label_encoders.pkl")

    return model, scaler, encoders

model, scaler, encoders = load_artifacts()

st.title("🏦 Bank Loan Risk Analytics")
st.caption("Loan Default Prediction using Optimized Logistic Regression")
st.markdown("Use the form below to estimate the probability that a borrower will default on a loan based on the trained machine learning model.")

st.divider()

st.subheader("Applicant & Loan Information")

left, right = st.columns(2)

with left:
    st.markdown("#### Loan Details")
    loan_amnt = st.number_input("Loan Amount", min_value=500, value=10000, step=500)
    term = st.selectbox("Term (Months)", [36, 60])
    grade = st.selectbox("Grade", encoders["grade"].classes_)
    int_rate = st.number_input("Interest Rate (%)", min_value=0.0, value=12.5, step=0.25)
    st.markdown("#### Applicant Details")
    annual_inc = st.number_input("Annual Income", min_value=0, value=60000, step=5000)
    st.markdown("#### Credit Profile")
    credit_score = st.number_input("Credit Score", min_value=300, max_value=850, value=700, step=5)
    dti = st.number_input("Debt-to-Income Ratio", min_value=0.0, value=15.0, step=0.5)
    open_acc = st.number_input("Open Accounts", min_value=0, value=8)
    total_acc = st.number_input("Total Accounts", min_value=1, value=25)
    mort_acc = st.number_input("Mortgage Accounts", min_value=0, value=1)
    revol_util = st.number_input(
        "Revolving Utilization (%)",
        min_value=0.0,
        max_value=100.0,
        value=45.0,
    )

with right:
    purpose = st.selectbox("Purpose", encoders["purpose"].classes_)
    home = st.selectbox("Home Ownership", encoders["home_ownership"].classes_)
    emp = st.selectbox("Employment Length", encoders["emp_length"].classes_)
    verification = st.selectbox("Verification Status", encoders["verification_status"].classes_)
    application = st.selectbox("Application Type", encoders["application_type"].classes_)

if st.button("Predict Loan Risk", use_container_width=True):
    installment = loan_amnt / term

    # Derive engineered features exactly as in the training notebook
    if annual_inc < 50000:
        income_group = "Low"
    elif annual_inc < 100000:
        income_group = "Middle"
    elif annual_inc < 200000:
        income_group = "High"
    else:
        income_group = "Very High"

    if int_rate < 8:
        interest_rate_group = "Low"
    elif int_rate < 13:
        interest_rate_group = "Moderate"
    elif int_rate < 18:
        interest_rate_group = "High"
    else:
        interest_rate_group = "Very High"

    row = pd.DataFrame({
        "loan_amnt": [loan_amnt],
        "term": [term],
        "int_rate": [int_rate],
        "installment": [installment],
        "grade": [encoders["grade"].transform([grade])[0]],
        "purpose": [encoders["purpose"].transform([purpose])[0]],
        "annual_inc": [annual_inc],
        "emp_length": [encoders["emp_length"].transform([emp])[0]],
        "home_ownership": [encoders["home_ownership"].transform([home])[0]],
        "verification_status": [encoders["verification_status"].transform([verification])[0]],
        "credit_score": [credit_score],
        "dti": [dti],
        "open_acc": [open_acc],
        "revol_util": [revol_util],
        "total_acc": [total_acc],
        "mort_acc": [mort_acc],
        "income_group": [encoders["income_group"].transform([income_group])[0]],
        "interest_rate_group": [encoders["interest_rate_group"].transform([interest_rate_group])[0]],
        "application_type": [encoders["application_type"].transform([application])[0]],
    })

    scaled = scaler.transform(row)
    probability = model.predict_proba(scaled)[0][1]
    prediction = model.predict(scaled)[0]

    st.divider()
    st.subheader("Prediction Result")
    col1, col2 = st.columns(2)

    with col1:
        if prediction == 1:
            st.error("⚠ High Risk Borrower")
        else:
            st.success("✅ Low Risk Borrower")

        st.metric("Default Probability", f"{probability*100:.2f}%")
        st.progress(float(probability))

        if probability < 0.30:
            st.success("Risk Level: Low")
            recommendation = "Loan can be considered for approval."
        elif probability < 0.60:
            st.warning("Risk Level: Medium")
            recommendation = "Manual review recommended before approval."
        else:
            st.error("Risk Level: High")
            recommendation = "High default risk. Review carefully before approval."

    with col2:
        st.markdown("#### Derived Features")
        st.write(f"**Income Group:** {income_group}")
        st.write(f"**Interest Rate Group:** {interest_rate_group}")
        st.write(f"**Estimated Installment:** ${installment:,.2f}")
        st.markdown("#### Recommendation")
        st.info(recommendation)

st.divider()
st.subheader("Project Summary")

m1, m2, m3, m4 = st.columns(4)
m1.metric("Model Used", "Optimized LR")
m2.metric("Features Used", "19")
m3.metric("Dataset Size", "2.26M")
m4.metric("Prediction Target", "Default")

st.divider()
st.subheader("Model Performance")

c1, c2, c3 = st.columns(3)

c1.metric("Accuracy", "70.78%")
c2.metric("Recall", "54.84%")
c3.metric("ROC-AUC", "70.34%")

st.divider()

with st.expander("📌 About This Application"):
    st.markdown(
        """
**Bank Loan Risk Analytics** is an end-to-end data analytics project built using the Lending Club dataset to predict loan default risk.

### Technology Stack
✔ Python — Data Cleaning & Feature Engineering
✔ SQL — Business Analysis
✔ Power BI — Interactive Dashboard
✔ Machine Learning — Loan Default Prediction
✔ Streamlit — Model Deployment

### Project Workflow
Raw Data → Python → SQL → Power BI → Machine Learning → Streamlit

**Author:** Sahil Jangid
"""
    )

st.caption("Built with Python • Scikit-learn • SQL • Power BI • Streamlit")

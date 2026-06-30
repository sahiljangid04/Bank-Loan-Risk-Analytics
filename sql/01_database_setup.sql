/*
==========================================================
Project : Bank Loan Risk Analytics
Phase   : SQL Database Setup

Objective:
Create the project database.

Author: Sahil Jangid
==========================================================
*/

DROP DATABASE IF EXISTS bank_loan_risk;

CREATE DATABASE bank_loan_risk;

USE bank_loan_risk;




DROP TABLE IF EXISTS loan_data;

CREATE TABLE loan_data (
    loan_amnt DECIMAL(10,2),
    term SMALLINT,
    int_rate DECIMAL(5,2),
    installment DECIMAL(10,2),

    grade CHAR(1),
    sub_grade VARCHAR(2),
    loan_status VARCHAR(100),
    purpose VARCHAR(100),

    issue_d DATE,

    annual_inc DECIMAL(12,2),
    emp_length VARCHAR(20),
    home_ownership VARCHAR(20),
    verification_status VARCHAR(50),

    fico_range_low SMALLINT,
    fico_range_high SMALLINT,
    credit_score DECIMAL(6,1),

    dti DECIMAL(6,2),
    open_acc SMALLINT,
    pub_rec SMALLINT,
    revol_bal INT,
    revol_util DECIMAL(5,2),
    total_acc SMALLINT,
    delinq_2yrs SMALLINT,
    inq_last_6mths SMALLINT,

    earliest_cr_line DATE,

    mort_acc SMALLINT,
    tot_cur_bal BIGINT,
    total_bc_limit INT,
    tot_hi_cred_lim BIGINT,

    addr_state CHAR(2),

    application_type VARCHAR(30),

    default_flag TINYINT,

    income_group VARCHAR(20),
    loan_amount_group VARCHAR(20),
    interest_rate_group VARCHAR(20),

    issue_year SMALLINT
);
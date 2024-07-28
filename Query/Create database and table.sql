-- CREATE DATABASE

CREATE DATABASE IF NOT EXISTS bank_loan;

USE bank_loan;

-- CREATE TABLE

DROP TABLE IF EXISTS financial_loan;
CREATE TABLE financial_loan
(
	id INT PRIMARY KEY,
    address_state VARCHAR(10) NOT NULL,
    application_type VARCHAR(50) NOT NULL,
    emp_length VARCHAR(10) NOT NULL,
    emp_title VARCHAR(255),
    grade VARCHAR(10) NOT NULL,
    home_ownership VARCHAR(50) NOT NULL,
    issue_date DATE NOT NULL,
    last_credit_pull_date DATE NOT NULL,
    last_payment_date DATE NOT NULL,
    loan_status VARCHAR(50) NOT NULL,
    next_payment_date DATE NOT NULL,
    member_id INT NOT NULL,
    purpose VARCHAR(50) NOT NULL,
    sub_grade VARCHAR(10) NOT NULL,
    term VARCHAR(10) NOT NULL,
    verification_status VARCHAR(50) NOT NULL,
    annual_income DECIMAL(9,2) NOT NULL,
    dti DECIMAL(5,4) NOT NULL,
    installment DECIMAL(9,2) NOT NULL,
    int_rate DECIMAL(5,4) NOT NULL,
    loan_amount DECIMAL(9,2) NOT NULL,
    total_acc INT NOT NULL,
    total_payment DECIMAL(9,2) NOT NULL
);

-- LOAD DATA FROM CSV FILE

LOAD DATA LOCAL INFILE '/Users/gahooshao/Downloads/project - bank loan/financial_loan.csv' 
INTO TABLE financial_loan 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'  
IGNORE 1 LINES;
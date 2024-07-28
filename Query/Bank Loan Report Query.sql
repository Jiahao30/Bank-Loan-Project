

-- A. KEY PERFORMANCE INDICATORS
-- TOTAL LOAN APPLICATIONS
SELECT COUNT(*) AS total_application
FROM financial_loan;

-- Since the latest date of the file is in December 2021, 
-- the current month for this project is taken as December.
-- MTD LOAN APPLICATIONS (December)
SELECT COUNT(*) AS MTD_total_application
FROM financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD LOAN APPLICATIONS (November)
SELECT COUNT(*) AS PMTD_total_application
FROM financial_loan
WHERE MONTH(issue_date) = 11;

-- TOTAL FUNDED AMOUNT
SELECT SUM(loan_amount) AS total_funded_amount
FROM financial_loan;

-- MTD TOTAL FUNDED AMOUNT (December)
SELECT SUM(loan_amount) AS MTD_total_funded_amount
FROM financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD TOTAL FUNDED AMOUNT (November)
SELECT SUM(loan_amount) AS PMTD_total_funded_amount
FROM financial_loan
WHERE MONTH(issue_date) = 11;

-- TOTAL AMOUNT RECEIVED
SELECT SUM(total_payment) AS total_payment
FROM financial_loan;

-- MTD TOTAL AMOUNT RECEIVED (December)
SELECT SUM(total_payment) AS MTD_total_payment
FROM financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD TOTAL AMOUNT RECEIVED (November)
SELECT SUM(total_payment) AS PMTD_total_payment
FROM financial_loan
WHERE MONTH(issue_date) = 11;

-- AVAERAGE INTEREST RATE
SELECT ROUND(AVG(int_rate)*100, 2) AS avg_interest_rate
FROM financial_loan;

-- MTD AVAERAGE INTEREST RATE (December)
SELECT ROUND(AVG(int_rate)*100, 2) AS MTD_avg_interest_rate
FROM financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD AVAERAGE INTEREST RATE (November)
SELECT ROUND(AVG(int_rate)*100, 2) AS PMTD_avg_interest_rate
FROM financial_loan
WHERE MONTH(issue_date) = 11;

-- AVAERAGE DTI
SELECT ROUND(AVG(dti)*100, 2) AS avg_dti
FROM financial_loan;

-- MTD AVAERAGE DTI (December)
SELECT ROUND(AVG(dti)*100, 2) AS MTD_avg_dti
FROM financial_loan
WHERE MONTH(issue_date) = 12;

-- PMTD AVAERAGE DTI (November)
SELECT ROUND(AVG(dti)*100, 2) AS PMTD_avg_dti
FROM financial_loan
WHERE MONTH(issue_date) = 11;

-- GOOD LOAN ISSUED
-- GOOD LOAN PERCENTAGE
SELECT 
	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100) /
		COUNT(id) AS good_loan_percentage
FROM financial_loan;

-- GOOD LOAN APPLICATIONS
SELECT COUNT(*) AS good_loan_applications
FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- GOOD LOAN FUNDED AMOUNT
SELECT SUM(loan_amount) AS good_loan_funded_amount
FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- GOOD LOAN AMOUNT RECEIVED
SELECT SUM(total_payment) AS good_loan_amount_received
FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- BAD LOAN ISSUED
-- BAD LOAN PERCENTAGE
SELECT 
	(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100) /
		COUNT(id) AS bad_loan_percentage
FROM financial_loan;

-- BAD LOAN APPLICATIONS
SELECT COUNT(*) AS bad_loan_applications
FROM financial_loan
WHERE loan_status = 'Charged Off';

-- BAD LOAN FUNDED AMOUNT
SELECT SUM(loan_amount) AS bad_loan_funded_amount
FROM financial_loan
WHERE loan_status = 'Charged Off';

-- BAD LOAN AMOUNT RECEIVED
SELECT SUM(total_payment) AS bad_loan_amount_received
FROM financial_loan
WHERE loan_status = 'Charged Off';

-- LOAN STATUS
SELECT 
	loan_status,
    COUNT(id) AS loan_count,
    SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_amount_received,
    ROUND(AVG(int_rate) * 100, 2) AS interest_rate,
    ROUND(AVG(dti) * 100, 2) AS dti
FROM financial_loan
GROUP BY loan_status;

-- MTD LOAN STATUS (December)
SELECT
	loan_status,
    SUM(loan_amount) AS MTD_total_funded_amount,
    SUM(total_payment) AS MTD_total_amount_received
FROM financial_loan
WHERE MONTH(issue_date) = 12
GROUP BY loan_status;

-- B. BANK LOAN REPORT
-- MONTHLY TRENDS BY ISSUE DATE
SELECT
	MONTH(issue_date) AS month_number,
    MONTHNAME(issue_date) AS month_name,
    COUNT(id) AS total_loan_applications,
    SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_amount_received
FROM financial_loan
GROUP BY MONTH(issue_date), MONTHNAME(issue_date)
ORDER BY MONTH(issue_date);

-- REGIONAL ANALYSIS BY STATE
SELECT
	address_state AS states,
    COUNT(id) AS total_loan_applications,
	SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_amount_received
FROM financial_loan
GROUP BY address_state
ORDER BY address_state;

-- LOAN TERM ANALYSIS
SELECT
	term AS loan_term,
    COUNT(id) AS total_loan_applications,
	SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_amount_received
FROM financial_loan
GROUP BY term
ORDER BY term;

-- EMPLOYEE LENGTH ANALYSIS
SELECT
	emp_length AS employee_length,
    COUNT(id) AS total_loan_applications,
	SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_amount_received
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length;

-- LOAN PURPOSE BREAKDOWN
SELECT
	purpose AS loan_purpose,
    COUNT(id) AS total_loan_applications,
	SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_amount_received
FROM financial_loan
GROUP BY purpose
ORDER BY purpose;

-- HOME OWNERSHIP ANALYSIS
SELECT
	home_ownership,
    COUNT(id) AS total_loan_applications,
	SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_amount_received
FROM financial_loan
GROUP BY home_ownership
ORDER BY home_ownership;
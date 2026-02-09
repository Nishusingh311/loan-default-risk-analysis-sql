CREATE DATABASE LoanRiskDB;
GO
USE LoanRiskDB;
GO


CREATE TABLE Loans_Clean (
    loan_id INT PRIMARY KEY,
    loan_amount INT,
    term_months INT,
    interest_rate DECIMAL(5,2),
    installment DECIMAL(10,2),
    home_ownership VARCHAR(50),
    annual_income DECIMAL(12,2),
    verification_status VARCHAR(50),
    issue_date DATE,
    loan_status VARCHAR(50),
    purpose VARCHAR(50),
    total_payment DECIMAL(12,2),
    default_flag INT
);








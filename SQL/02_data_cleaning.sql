INSERT INTO Loans_Clean
SELECT
    id AS loan_id,
    loan_amnt AS loan_amount,

    -- term: '36 months' → 36
    CAST(REPLACE(term, ' months', '') AS INT) AS term_months,

    -- int_rate: '13.56%' → 13.56
    CAST(REPLACE(int_rate, '%', '') AS DECIMAL(5,2)) AS interest_rate,

    installment,
    home_ownership,

    -- scientific notation safe conversion
    CAST(annual_inc AS FLOAT) AS annual_income,

    verification_status,

    -- issue_d: 'Dec-2018' → DATE
    CAST('01-' + issue_d AS DATE) AS issue_date,

    loan_status,
    purpose,
    total_pymnt AS total_payment,

    -- banking logic
    CASE
        WHEN loan_status = 'Charged Off' THEN 1
        WHEN loan_status = 'Fully Paid' THEN 0
        ELSE NULL
    END AS default_flag

FROM loan_data;



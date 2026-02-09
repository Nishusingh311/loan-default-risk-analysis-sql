
## Business Questions Addressed

This project aims to answer the following business questions from a credit risk perspective:

1. What percentage of loans default, and how is default defined?
2. Does loan tenure (36 vs 60 months) impact default risk?
3. How does borrower income level influence loan default rates?
4. Which loan purposes carry the highest default risk?
5. Is there a relationship between interest rates and loan defaults?
6. Which borrower segments contribute the most to potential financial losses?


## Key Insights & Findings

- Loans with a 60-month tenure show a significantly higher default rate compared to 36-month loans, indicating increased long-term credit risk.
- Borrowers in the low-income segment exhibit the highest default rates, suggesting income is a strong risk indicator.
- Higher interest rate loans are more prone to default, reflecting risk-based pricing and borrower affordability challenges.
- Certain loan purposes, such as small business and credit-related loans, contribute disproportionately to overall defaults.


## Assumptions & Limitations

- Loan default is defined as loans with status "Charged Off", while "Fully Paid" loans are treated as non-default.
- Loans with status "Current" are excluded from default analysis, as their final outcome is unknown.
- The dataset does not include credit scores, debt-to-income ratios, or employment stability, which limits predictive accuracy.
- Financial loss is approximated using total payment information and does not account for recovery or collateral.
- The analysis assumes historical loan behavior is indicative of future risk trends.


## Business Recommendations

- Apply stricter credit checks or higher pricing for low-income, high-interest borrowers.
- Limit exposure to long-tenure loans or introduce tighter monitoring.
- Reassess risk pricing for loan purposes with consistently high default rates.


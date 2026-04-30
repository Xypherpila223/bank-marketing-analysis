-- Deposit Outcome Audit
-- Date: 2026-03-21
/*
-- Identifies unique values in the deposit column and counts successful subscriptions.
-- Purpose: Data validation and quantifying total 'yes' outcomes.
-- Table: bank
-- Used for Verification & KPI metrics
*/

-- Audit unique values for the target variable
SELECT DISTINCT(deposit)
FROM bank; 

-- Count total successful subscriptions
SELECT COUNT(*)
FROM bank
WHERE deposit = 'yes';

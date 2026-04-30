-- KPI Demographic Success Analysis
-- Author: John Butch Gromontil
-- Date: 2026-03-21
/*
-- Segments customers into age brackets and calculates the subscription success rate per group.
-- Purpose: Identify the most responsive age demographic for targeted marketing.
-- Table: bank
-- Used for Demographic Heatmaps and Segmentation Charts
*/

SELECT 
    CASE 
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 45 THEN '30-45'
        WHEN age BETWEEN 46 AND 60 THEN '46-60'
        ELSE 'Over 60' 
    END AS age_group,
    COUNT(*) AS total_customers,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS yes_rate
FROM bank
GROUP BY age_group
ORDER BY yes_rate DESC;

-- Data Volume Validation
/*
-- Manual summation of segmented counts to verify total population integrity.
-- Purpose: Ensuring that the sum of parts matches the grand total.
-- Table: N/A (Calculation)
-- Used for Internal Data Quality Check
*/

SELECT 611 + 1551 + 3022 + 5978 AS total_verified_count;

-- KPI Age Range Audit
/*
-- Lists all unique ages present in the dataset.
-- Purpose: Audit the age range to ensure the CASE statement logic covers all possible values.
-- Table: bank
-- Used for Profiling & Outlier Detection
*/

SELECT DISTINCT(age)
FROM bank
ORDER BY age ASC;

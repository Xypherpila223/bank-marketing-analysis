-- KPI Month-on-Month Performance Analysis
-- Author: John Butch Gromontil
-- Date: 2026-03-21
/*
-- Analyzes monthly call volume and subscription rates compared to global averages.
-- Purpose: Identify seasonal trends and peak performance months for campaign optimization.
-- Table: bank
-- Used for Monthly Trend Line Charts and Performance Benchmarking
*/

-- Step 1: Audit available months
SELECT DISTINCT(month)
FROM bank; 

-- Step 2: Comparative Monthly vs. Overall Statistics
WITH CampaignStats AS (
    SELECT 
        COUNT(*) AS total_contacted,
        COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_subscriptions,
        (COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*)) AS overall_subscription_rate
    FROM bank
)

SELECT 
    month,
    COUNT(*) AS monthly_calls,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS monthly_sub_rate,
    (SELECT total_contacted FROM CampaignStats) AS grand_total_contacted,
    ROUND((SELECT overall_subscription_rate FROM CampaignStats), 2) AS overall_rate
FROM bank
GROUP BY month
ORDER BY 
    CASE month
        WHEN 'jan' THEN 1 WHEN 'feb' THEN 2 WHEN 'mar' THEN 3 
        WHEN 'apr' THEN 4 WHEN 'may' THEN 5 WHEN 'jun' THEN 6 
        WHEN 'jul' THEN 7 WHEN 'aug' THEN 8 WHEN 'sep' THEN 9 
        WHEN 'oct' THEN 10 WHEN 'nov' THEN 11 WHEN 'dec' THEN 12 
    END;

 
--  Global Campaign Summary
/*
-- Summarizes high-level success metrics for the entire dataset.
-- Purpose: Quick reference for total reach and final conversion percentage.
-- Table: bank
*/

SELECT 
    COUNT(*) AS total_contacted,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_subscribed,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS overall_rate
FROM bank;

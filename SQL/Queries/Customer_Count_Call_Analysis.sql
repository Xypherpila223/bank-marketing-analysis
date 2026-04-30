-- KPI Total Customer Count
-- Author: John Butch Gromontil
-- Date: 2026-03-21
/*
-- Retrieves the total row count of the bank dataset.
-- Purpose: General audit of total population size.
-- Table: bank
-- Used for Data Integrity Check
-- Used as KPI Dashboard Card (Total Customer)
*/

SELECT count(*) 
FROM bank;

-- KPI Subscription Success Rate
-- Author: John Butch Gromontil
-- Date: 2026-03-21
/*
-- Calculates total conversions, total reach, and the conversion percentage.
-- Purpose: Measure the effectiveness of the marketing campaign.
-- Table: bank
-- Used as KPI Dashboard Card (Conversion Rate)
*/

SELECT 
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_yes,
    COUNT(*) AS total_contacted,
    (COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*)) AS subscription_rate
FROM bank;


-- Lead Outreach Validation
-- Author: John Butch Gromontil
-- Date: 2026-03-21
/*
-- Groups customers by 'pdays' to identify the volume of prospects never contacted.
-- Purpose: Validates the count of people never contacted before (pdays = -1).
-- Table: bank
-- Used for Database Validation
*/

SELECT pdays, COUNT(*) AS customer_count
FROM bank
GROUP BY pdays
ORDER BY pdays ASC;



-- Engagement Analysis (Segmented Comparison)
-- Author: John Butch Gromontil
-- Date: 2026-03-21
/*
-- Compares new vs. returning customers in a single view for faster reading.
-- Purpose: Evaluate engagement metrics (count and talk time) across different segments.
-- Table: bank
-- Used for Comparison Tables in Dashboards
*/

SELECT 
    'New Customer (First Contact)' AS customer_segment,
    COUNT(*) AS customer_count,
    AVG(duration) AS avg_talk_time_secs,
    AVG(duration) / 60.0 AS avg_talk_time_mins
FROM bank
WHERE pdays = -1 AND campaign >= 1

UNION ALL

SELECT 
    'Returning Customer (Follow-up)' AS customer_segment,
    COUNT(*) AS customer_count,
    AVG(duration) AS avg_talk_time_secs,
    AVG(duration) / 60.0 AS avg_talk_time_mins
FROM bank
WHERE pdays != -1 AND campaign >= 1;

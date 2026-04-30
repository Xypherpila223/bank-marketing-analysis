-- PROJECT: Bank Marketing Campaign Data Analysis & KPI Dashboard
-- DATE: 2026-03-21

-- KPI Campaign Frequency Effectiveness
/*
-- Analyzes how the number of contacts (campaign) affects the conversion rate.
-- Purpose: Determine the point of diminishing returns for repeated customer contact.
-- Table: bank
-- Used for Campaign Strategy & Frequency Caps
*/
SELECT 
    campaign AS number_of_contacts,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_yes,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM bank
WHERE campaign <= 10 
GROUP BY campaign
ORDER BY campaign;

-- Global Average Benchmark
SELECT 
    COUNT(*) AS total_calls,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_yes,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS overall_average_rate
FROM bank;

---

-- KPI Financial Liability Impact
/*
-- Correlates housing/personal loans and average balance with subscription success.
-- Purpose: Identify if financial debt (loans) is a barrier to product adoption.
-- Table: bank
-- Used for Risk & Propensity Modeling
*/
SELECT 
    housing, 
    loan,
    COUNT(*) AS total_customers,
    AVG(balance) AS avg_balance,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS success_rate
FROM bank
GROUP BY housing, loan
ORDER BY success_rate DESC;

---

-- KPI Channel Performance by Time & Method
/*
-- Breaks down success rates by month and contact type.
-- Purpose: Identify the best performing communication channel for specific months.
-- Table: bank
*/
-- Performance by Month and Contact Method
SELECT 
    month,
    contact,
    COUNT(*) AS total_calls,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_yes,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS success_rate
FROM bank
GROUP BY month, contact
ORDER BY success_rate DESC;

-- Aggregate Channel Performance
SELECT 
    contact,
    COUNT(*) AS total_calls,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_subscribed,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM bank
GROUP BY contact
ORDER BY conversion_rate DESC;

---

-- KPI Socio-Demographic Segmentation
/*
-- Comprehensive view of conversion rates across Age, Job, Education, and Marital Status.
-- Purpose: Create a detailed profile of the "Ideal Customer."
-- Table: bank
-- Used for Persona Development & Targeted Marketing
*/

-- Segment 1: Age Grouping
SELECT 
    CASE 
        WHEN age < 30 THEN 'Young (18-29)'
        WHEN age BETWEEN 30 AND 39 THEN 'Adult (30-39)'
        WHEN age BETWEEN 40 AND 49 THEN 'Middle Age (40-49)'
        WHEN age >= 50 THEN 'Senior (50+)'
    END AS age_group,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_subscribed,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM bank
GROUP BY age_group
ORDER BY conversion_rate DESC;

-- Segment 2: Occupational Impact
SELECT 
    job,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_subscribed,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM bank
GROUP BY job
ORDER BY conversion_rate DESC;

-- Segment 3: Educational Level
SELECT 
    education,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_subscribed,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM bank
GROUP BY education
ORDER BY conversion_rate DESC;

-- Segment 4: Marital Status
SELECT 
    marital,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_subscribed,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM bank
GROUP BY marital
ORDER BY conversion_rate DESC;

---

-- KPI Primary Contact Method Summary
/*
-- Final summary of contact type effectiveness.
-- Purpose: Final audit of which communication method yields the highest successful subscriptions.
-- Table: bank
*/
SELECT 
    contact AS contact_type,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS successful_subscriptions,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS success_rate
FROM bank
GROUP BY contact
ORDER BY success_rate DESC;

SELECT 
    campaign AS number_of_contacts,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_yes,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM bank
WHERE campaign <= 10 -- We limit to 10 to see the clear trend
GROUP BY campaign
ORDER BY campaign;


SELECT 
    housing, 
    loan,
    COUNT(*) AS total_customers,
    AVG(balance) AS avg_balance,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS success_rate
FROM bank
GROUP BY housing, loan
ORDER BY success_rate DESC;



SELECT 
    month,
    contact,
    COUNT(*) AS total_calls,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_yes,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS success_rate
FROM bank
GROUP BY month, contact
ORDER BY success_rate DESC;

SELECT 
    contact,
    COUNT(*) AS total_calls,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_subscribed,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM bank
GROUP BY contact
ORDER BY conversion_rate DESC;

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

SELECT 
    job,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_subscribed,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM bank
GROUP BY job
ORDER BY conversion_rate DESC;

SELECT 
    education,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_subscribed,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM bank
GROUP BY education
ORDER BY conversion_rate DESC;

SELECT 
    marital,
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_subscribed,
    ROUND(COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS conversion_rate
FROM bank
GROUP BY marital
ORDER BY conversion_rate DESC;
SELECT 
    COUNT(CASE WHEN deposit = 'yes' THEN 1 END) AS total_yes,
    COUNT(*) AS total_contacted,
    (COUNT(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*)) AS subscription_rate
FROM bank;

SELECT pdays, COUNT(*) AS customer_count
FROM bank
GROUP BY pdays
ORDER BY pdays ASC;

SELECT 
    COUNT(*) AS current_contacts,
    AVG(duration) AS avg_talk_time
FROM bank
WHERE pdays = -1 AND campaign >= 1; 


SELECT 
    COUNT(*) AS past_contacts,
    AVG(duration) AS avg_talk_time
FROM bank
WHERE pdays != -1 AND campaign >= 1; 



SELECT count(*)
from bank
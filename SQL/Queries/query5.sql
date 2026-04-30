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

select 611 + 1551 + 3022 + 5978;

select distinct(age)
from bank



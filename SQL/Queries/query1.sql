select * From bank;

SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'bank';
SELECT COUNT(*) 
FROM bank 
WHERE contact !='unknown';

SELECT *
FROM bank 
WHERE contact !='unknown';

select distinct(contact) from bank;


SELECT COUNT(*) AS previously_contacted
FROM bank
WHERE pdays != -1;
 
SELECT COUNT(*) AS  never_contacted
FROM bank
WHERE pdays = -1;
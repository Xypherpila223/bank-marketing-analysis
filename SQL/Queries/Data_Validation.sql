-- Data Schema Overview
-- Author: John Butch Gromontil
-- Date: 2026-03-21
/*
-- Retrieves table structure and column metadata.
-- Purpose: Schema verification and data type auditing.
-- Table: bank
-- Used for Database Documentation
*/

SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'bank';


-- Contact Accessibility Audit
-- Author: John Butch Gromontil
-- Date: 2026-03-21
/*
-- Counts and retrieves records with valid contact information.
-- Purpose: Filter out 'unknown' contacts for campaign execution.
-- Table: bank
-- Used for Lead Filtering
*/

-- Count of valid contacts
SELECT COUNT(*) 
FROM bank 
WHERE contact !='unknown';

-- Count of missing contact info
SELECT COUNT(*) 
FROM bank 
WHERE contact ='unknown';

-- Retrieve all valid contact records
SELECT *
FROM bank 
WHERE contact !='unknown';

-- Identify unique contact channels
SELECT DISTINCT(contact) FROM bank;


-- Campaign Reach Metrics
-- Author: John Butch Gromontil
-- Date: 2026-03-21
/*
-- Segments customer base into previously contacted vs never contacted.
-- pdays = -1 indicates a new lead with no prior contact.
-- Table: bank
-- Used as KPI Dashboard Card
*/

-- Total Previously Contacted
SELECT COUNT(*) AS previously_contacted
FROM bank
WHERE pdays != -1;

-- Total Never Contacted
SELECT COUNT(*) AS never_contacted
FROM bank
WHERE pdays = -1;

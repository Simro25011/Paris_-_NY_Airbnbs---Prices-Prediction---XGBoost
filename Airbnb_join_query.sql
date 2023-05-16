select * from paris_airbnbs 
select * from nyc_clean_airbnb
select * from paris_clean_airbnb

ALTER TABLE paris_clean_airbnb 
ALTER COLUMN "ID" TYPE text;

CREATE TABLE paris_nyc_airbnbs AS
SELECT * FROM paris_clean_airbnb
UNION ALL
SELECT * FROM nyc_clean_airbnb;

select * from paris_nyc_airbnbs
limit 100;
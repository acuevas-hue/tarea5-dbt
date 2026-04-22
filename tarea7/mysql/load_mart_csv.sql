LOAD DATA INFILE '/var/lib/mysql-files/mart_content_activity_obt.csv'
INTO TABLE mart_content_activity_obt
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(source_name, activity_date, year, month, day, content_title, content_category, content_description, @user_id, record_count)
SET user_id = NULLIF(@user_id, '');
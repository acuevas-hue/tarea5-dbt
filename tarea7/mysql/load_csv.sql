LOAD DATA INFILE '/var/lib/mysql-files/nasa_apod_api.csv'
INTO TABLE nasa_apod_api
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(date, url, title, media_type, explanation, service_version, _airbyte_raw_id, _airbyte_extracted_at);

LOAD DATA INFILE '/var/lib/mysql-files/jsonplaceholder.csv'
INTO TABLE jsonplaceholder
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id, userid, title, body);
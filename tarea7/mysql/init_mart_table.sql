CREATE TABLE IF NOT EXISTS mart_content_activity_obt (
  source_name VARCHAR(100),
  activity_date DATE,
  year INT,
  month INT,
  day INT,
  content_title TEXT,
  content_category VARCHAR(100),
  content_description LONGTEXT,
  user_id INT NULL,
  record_count INT
);
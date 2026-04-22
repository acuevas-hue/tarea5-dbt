CREATE TABLE IF NOT EXISTS nasa_apod_api (
  date DATE,
  url TEXT,
  title TEXT,
  media_type VARCHAR(50),
  explanation TEXT,
  service_version VARCHAR(50),
  _airbyte_raw_id VARCHAR(255),
  _airbyte_extracted_at DATETIME
);

CREATE TABLE IF NOT EXISTS jsonplaceholder (
  id INT,
  userid INT,
  title TEXT,
  body TEXT
);
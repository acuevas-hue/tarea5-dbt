select
    cast(date as date) as apod_date,
    url,
    title,
    media_type,
    explanation,
    service_version,
    _airbyte_raw_id,
    _airbyte_extracted_at
from {{ source('airbyte_raw', 'nasa_apod_api') }}
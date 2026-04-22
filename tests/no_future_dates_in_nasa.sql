select *
from {{ ref('stg_nasa_apod') }}
where apod_date > current_date
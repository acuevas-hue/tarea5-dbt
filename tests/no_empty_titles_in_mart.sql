select *
from {{ ref('mart_content_activity_obt') }}
where trim(content_title) = ''
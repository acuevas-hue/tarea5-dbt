select
    apod_date as activity_date,
    'nasa_apod' as source_name,
    title as content_title,
    media_type as content_category,
    explanation as content_description,
    null as user_id,
    1 as record_count
from {{ ref('stg_nasa_apod') }}

union all

select
    date '2024-01-01' as activity_date,
    'jsonplaceholder_posts' as source_name,
    post_title as content_title,
    'post' as content_category,
    post_body as content_description,
    user_id,
    1 as record_count
from {{ ref('stg_jsonplaceholder_posts') }}
select
    cast(id as integer) as post_id,
    cast(userid as integer) as user_id,
    title as post_title,
    body as post_body
from {{ source('airbyte_raw', 'jsonplaceholder') }}
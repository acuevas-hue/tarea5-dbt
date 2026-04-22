with base as (

    select
        cast(id as integer) as post_id,
        cast(userid as integer) as user_id,
        title as post_title,
        body as post_body
    from {{ source('airbyte_raw', 'jsonplaceholder') }}

)

select distinct
    post_id,
    user_id,
    post_title,
    post_body
from base
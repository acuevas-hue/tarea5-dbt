select
    i.source_name,
    i.activity_date,
    d.year,
    d.month,
    d.day,
    i.content_title,
    i.content_category,
    i.content_description,
    i.user_id,
    i.record_count
from {{ ref('int_content_activity') }} i
left join {{ ref('dim_date') }} d
    on i.activity_date = d.date_day
with dates as (

    select
        date '2024-01-01' + cast(i as integer) as date_day
    from range(0, 366) t(i)

)

select
    date_day,
    extract(year from date_day) as year,
    extract(month from date_day) as month,
    extract(day from date_day) as day
from dates
with
    source as (

        {#-
    Normally we would select from the table here, but we can use seeds to load
    our data in this project
    #}
        {# select * from {{ ref('raw_orders') }} #}
        select * from {{ source('jaffle_shop', 'orders') }}

    ),

    renamed as (
        select id as order_id, user_id as customer_id, order_date, status from source

    )

select *
from renamed

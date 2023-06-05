with
    source as (

        {#-
    Normally we would select from the table here, but we can use seeds to load
    our data in this project
    #}
        {# select * from {{ ref('raw_payments') }} #}
        select
            * exclude (orderid, paymentmethod),
            orderid as order_id,
            paymentmethod as payment_method
        from {{ source('stripe', 'payment') }}

    ),

    renamed as (
        select
            id as payment_id,
            order_id,
            payment_method,

            -- `amount` is currently stored in cents, so we convert it to dollars
            amount / 100 as amount

        from source

    )

select *
from renamed

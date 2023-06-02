with source as (

    {#-
    Normally we would select from the table here, but can use seeds to load
    our data in this project
    #}
    {# select * from {{ ref('raw_customers') }} #}
    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed

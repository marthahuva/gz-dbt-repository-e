with 

source as (

    select * from {{ source('raw', 'fb') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name AS campaing_name,
        -- ads_cost,
        CAST(ads_cost AS FLOAT64) AS ads_cost,
        impression,
        click

    from source

)

select * from renamed

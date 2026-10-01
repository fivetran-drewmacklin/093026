with lineitem as (

    select *
    from {{ ref('LINEITEM') }}

),

orders as (

    select *
    from {{ ref('ORDERS') }}

),

final as (

    select
        lineitem.* exclude (LOADED_AT),
        lineitem.LOADED_AT as L_LOADED_AT,
        orders.* exclude (LOADED_AT),
        orders.LOADED_AT as O_LOADED_AT

    from lineitem
    inner join orders
        on lineitem.L_ORDERKEY = orders.O_ORDERKEY

)

select *
from final

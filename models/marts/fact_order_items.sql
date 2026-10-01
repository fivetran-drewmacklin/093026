with order_items as (

    select *
    from {{ ref('order_items') }}

),

part_suppliers as (

    select *
    from {{ ref('part_suppliers') }}

),

final as (

    select
        order_items.*,
        part_suppliers.*
    from order_items
    left join part_suppliers

        on order_items.L_PARTKEY = part_suppliers.PS_PARTKEY
        and order_items.L_SUPPKEY = part_suppliers.PS_SUPPKEY

)

select *
from final

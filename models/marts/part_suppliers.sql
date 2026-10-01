with partsupp as (

    select *
    from {{ ref('PARTSUPP') }}

),

part as (

    select *
    from {{ ref('PART') }}

),

supplier as (

    select *
    from {{ ref('SUPPLIER') }}

),

final as (

    select
        partsupp.*,
        part.*,
        supplier.*
    from partsupp
    inner join part
        on partsupp.PS_PARTKEY = part.P_PARTKEY
    inner join supplier
        on partsupp.PS_SUPPKEY = supplier.S_SUPPKEY

)

select *
from final

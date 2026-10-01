select
    L_ORDERKEY,
    L_LINENUMBER,
    count(*) as row_count
from {{ ref('fact_order_items') }}
group by
    L_ORDERKEY,
    L_LINENUMBER
having count(*) > 1

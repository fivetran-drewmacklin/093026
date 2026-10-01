select
    O_ORDERKEY,
    O_TOTALPRICE
from {{ ref('ORDERS') }}
where O_TOTALPRICE is null
    or O_TOTALPRICE <= 0

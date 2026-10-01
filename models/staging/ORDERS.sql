select *
from {{ source('TPCH_NOW', 'ORDERS') }}

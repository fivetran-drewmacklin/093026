select *
from {{ source('TPCH_NOW', 'LINEITEM') }}

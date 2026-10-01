select *
from {{ source('TPCH_SF001', 'PART') }}

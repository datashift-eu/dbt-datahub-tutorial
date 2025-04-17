select
    sender,
    count(tracking_id) as shipments,
    round(avg(weight_kg), 2) as avg_weight
from 
    {{ ref('stg_delivered_shipments') }}
group by
    sender

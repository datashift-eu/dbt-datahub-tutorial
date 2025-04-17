select
    tracking_id,
    sender,
    recipient,
    shipment_type,
    weight_kg,
    origin,
    destination,
    delivery_date
from
    {{ ref('delivered_shipments') }}

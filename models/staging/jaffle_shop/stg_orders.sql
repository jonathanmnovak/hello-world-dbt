select
    id as order_id,
    user_id as customer_id,
    order_date

from {{source('raw_jaffle_shop', 'orders')}}
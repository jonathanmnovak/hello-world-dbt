select
    id as order_id,
    amount

from {{source('stripe', 'payments')}}
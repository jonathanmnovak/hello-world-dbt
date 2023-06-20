-- Amount should always be positive
select
    order_id,
    sum(Amount) as total_amount
from {{ref('stg_payments')}}
group by 1
having not(total_amount >= 0)
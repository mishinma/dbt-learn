
with orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_payments') }}

)

select
    o.order_id,
    o.customer_id,
    coalesce(sum(p.amount), 0) as amount

from orders as o
left join payments as p on p.order_id = o.order_id

group by 1, 2

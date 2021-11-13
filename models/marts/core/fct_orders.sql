

-- order_id
-- customer_id
-- amount (hint: this has to come from payments)

with orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_payments') }}

),

select
    o.order_id,
    o.customer_id,
    sum(p.amount), as amount,

from orders as order_id
left join payments as p on p.order_id = o.order_id

group by order_id


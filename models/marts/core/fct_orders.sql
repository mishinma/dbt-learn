
with orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_payments') }}

),

order_payments as (
    select
        order_id,
        sum(case when status = 'success' then amount end) as amount

    from payments
    group by 1
)

select
    o.order_id,
    o.customer_id,
    o.order_date,
    coalesce(op.amount, 0) as amount

from orders as o
left join order_payments as op on op.order_id = o.order_id

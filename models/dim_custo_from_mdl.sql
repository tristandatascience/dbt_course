with customers_from_mdl as (
select * from {{ ref('stg_jaffle_shop__customers') }}
),
orders_from_mdl as (
select * from {{ ref('stg_jaffle_shop__orders') }}
)
select * from orders_from_mdl join customers_from_mdl using (customer_id) 
--customers_orders_from_mdl as (select * from {{ ref('stg_jaffle_shop__customers') }})--

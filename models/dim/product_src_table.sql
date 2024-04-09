{{ config(materialized='table') }}

select name as prod_name, id as product_id,currency_code,status as prod_status from {{ref("src_product")}}
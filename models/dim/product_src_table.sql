{{ config(materialized='table') }}

select name as prod_name, id as product_id,currency_code,status as prod_status from {{source1('retail_data', 'product_source')}}
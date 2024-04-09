{{ config(materialized='view') }}


select count(id) as total_prod, currency_code from  {{source1('retail_data', 'product_source')}} group by currency_code
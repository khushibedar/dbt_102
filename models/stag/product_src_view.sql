{{ config(materialized='view') }}


select count(id) as total_prod, currency_code from  {{source('source_v1', 'product_source')}} group by currency_code
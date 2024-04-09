{{ config(materialized='view') }}


select count(id) as total_prod, currency_code from  {{source('source_v1', 'product')}} group by currency_code
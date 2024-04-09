{{ config(materialized='view') }}


select count(id) as total_prod, currency_code from  {{ref("src_product")}} group by currency_code
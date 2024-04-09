{{ config(materialized='view') }}

select count(transaction_id) as transaction_counts ,transaction_status from {{source('source_v1', 'transaction')}} group by transaction_status

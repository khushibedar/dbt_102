{{ config(materialized='view') }}

select count(transaction_id) as transaction_counts ,transaction_status from {{source1('retail_data', 'transaction_source')}} group by transaction_status

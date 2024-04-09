{{ config(materialized='table') }}

select cust_id,card_id,account_id from {{source('source_v1', 'transaction_source')}}

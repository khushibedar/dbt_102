{{ config(materialized='table') }}

select cust_id,card_id,account_id from {{source1('retail_data', 'transaction_source')}}

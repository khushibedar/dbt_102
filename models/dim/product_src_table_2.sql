{{ config(materialized='table') }}

select * from {{ref("src_product")}}
{{ config(materialized='view') }}

SELECT
C.*
FROM {{source('ecommerce', 'customers')}} as C

-- noinspection SqlNoDataSourceInspectionForFile

SELECT
    C.country as "Pais",
    ROUND(sum(I.total)) as "Total gastado"
FROM {{source('ecommerce', 'customers')}} as C
INNER JOIN {{source('ecommerce', 'invoices')}} as I ON C.customerid=I.customer
GROUP BY C.country
ORDER BY 2 desc

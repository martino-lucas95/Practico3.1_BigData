SELECT
    I.customer as "ID Cliente",
    count(DISTINCT I.invoiceno) as "Cantidad de compras"
FROM {{source('ecommerce', 'invoices')}} as I
GROUP BY I.customer
ORDER BY 2 desc

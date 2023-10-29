SELECT
    p.description as producto,
    i.store_location as ubicacion
FROM {{source('ecommerce', 'invoices_detail')}} as id
JOIN {{source('ecommerce', 'products')}} as p ON id.stockcode = p.stockcode
JOIN {{source('ecommerce', 'invoices')}} as i ON id.invoiceno = i.invoiceno
GROUP BY p.description, i.store_location
HAVING COUNT(DISTINCT i.store_location) = 1
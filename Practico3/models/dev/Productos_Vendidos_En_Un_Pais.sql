SELECT
    p.description as "Descripcion Producto",
    COUNT(DISTINCT I.store_location) "Cant. Tiendas de venta"
FROM {{source('ecommerce', 'invoices')}} as I
INNER JOIN {{source('ecommerce', 'invoices_detail')}} as Id ON I.invoiceno=Id.invoiceno
INNER JOIN {{source('ecommerce', 'products')}} p ON Id.stockcode = p.stockcode
GROUP BY p.description
HAVING COUNT(DISTINCT I.store_location) = 1
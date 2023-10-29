SELECT
    p.description as producto,
    SUM(id.quantity) as cantidad_vendida,
    SUM(id.quantity * p.unitprice) as monto_vendido
FROM {{source('ecommerce', 'invoices_detail')}} as id
JOIN {{source('ecommerce', 'products')}} as p ON id.stockcode = p.stockcode
GROUP BY p.description
ORDER BY cantidad_vendida DESC, monto_vendido DESC
LIMIT 1
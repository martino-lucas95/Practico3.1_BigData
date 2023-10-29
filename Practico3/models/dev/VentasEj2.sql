SELECT
    p.description as "Descripcion Producto",
    C.country as "Pais",
    sum(Id.quantity) as "Cantidad Total",
    ROUND(sum(I.total)) as "Total de Venta"
FROM  {{source('ecommerce', 'invoices')}} as I
INNER JOIN  {{source('ecommerce', 'invoices_detail')}}  as Id ON I.invoiceno=Id.invoiceno
INNER JOIN {{source('ecommerce', 'products')}} as p ON Id.stockcode = p.stockcode
INNER JOIN {{source('ecommerce', 'customers')}} as C ON C.customerid=I.customer
GROUP BY p.description, C.country
ORDER BY sum(Id.quantity) desc
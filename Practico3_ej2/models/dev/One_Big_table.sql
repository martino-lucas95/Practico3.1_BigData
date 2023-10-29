SELECT
    i.invoiceno,
    i.invoicedate,
    i.store_location,
    i.customer as customerid,
    c.country,
    id.stockcode,
    p.description,
    p.unitprice,
    id.quantity,
    i.distinct_products,
    i.total
FROM {{source('ecommerce', 'invoices')}} as i
JOIN {{source('ecommerce', 'customers')}} as c ON i.customer = c.customerid
JOIN {{source('ecommerce', 'invoices_detail')}} as id ON i.invoiceno = id.invoiceno
JOIN {{source('ecommerce', 'products')}} as p ON id.stockcode = p.stockcode

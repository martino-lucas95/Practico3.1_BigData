WITH CantVecesEnParejas AS (
    SELECT
        pares.stockcode1,
        pares.stockcode2,
        COUNT(*) AS CantVecesEnParejas
    FROM (SELECT
        a.invoiceno,
        a.stockcode AS stockcode1,
        b.stockcode AS stockcode2
    FROM {{source('ecommerce', 'invoices_detail')}} as a
    INNER JOIN {{source('ecommerce', 'invoices_detail')}} as b ON a.invoiceno = b.invoiceno AND a.stockcode < b.stockcode) AS pares
    GROUP BY stockcode1, stockcode2),
    facturas_x_producto AS (
        SELECT
            Id.stockcode,
            COUNT(DISTINCT Id.invoiceno) AS invoice_count
        FROM {{source('ecommerce', 'invoices_detail')}} as Id
        GROUP BY Id.stockcode
    )
SELECT
    CP.stockcode1,
    CP.stockcode2
FROM CantVecesEnParejas CP
    INNER JOIN facturas_x_producto p1 ON CP.stockcode1 = p1.stockcode
    INNER JOIN facturas_x_producto p2 ON CP.stockcode2 = p2.stockcode
WHERE CP.CantVecesEnParejas = p1.invoice_count
      AND CP.CantVecesEnParejas = p2.invoice_count

SELECT
    V1."Descripcion Producto",
    V1."Total de Venta" as "Total de Venta"
FROM {{ref('VentasEj2')}} as V1
ORDER BY V1."Total de Venta" desc
LIMIT 1
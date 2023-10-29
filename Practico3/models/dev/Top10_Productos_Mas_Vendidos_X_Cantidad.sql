SELECT
    V1."Descripcion Producto",
    V1."Cantidad Total" as "Cantidad"
FROM {{ref('VentasEj2')}} as V1
ORDER BY V1."Cantidad Total" desc
LIMIT 10
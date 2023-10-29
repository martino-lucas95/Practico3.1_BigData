**BIG DATA - UCU !**

Practico DBT + Datawarehouse 

Prerequisitos: 

1. Instalar Docker 
1. Descargar la carpeta Prac co 2/prac co2.zip de webasignatura y extraerla en sus equipos 
1. Abrir una instancia de terminal/cmd y navegar hasta la carpeta extraida 
1. Ejecutar el comando docker-compose up -d 

Podran conectarse a la base de datos **POSTGRES** que se está ejecutando, u lizando las credenciales postgres/P@assword!  

En la ubicación localhost:5433 

Preparación 

Analizar que tablas existen, que can dad de registros  ene cada una, iden ficar que tablas se pueden relacionar, en que campos existen nulos, etc. 

Existen tablas que puedan llegar a cambiar en el  empo de las cuales queramos mantener su historial? 

Ejercicio 1 

Se desea crear un Data Mart para el análisis de clientes, se desea saber: 

- Cuáles son los clientes que más dinero gastan 
- De donde son originarios los clientes que más dinero gastan 
- Cuáles son los clientes que más veces realizan compras 
1. Diseñar un esquema estrella que responda a estas inquietudes utilizando las tablas provistas en la base de datos **ecommerce\_dwh.** 
1. Desarrollar en DBT los modelos necesarios para la construcción del Data Mart mencionado.** 
1. Diseñar y desarrollar, pero ahora utilizando el enfoque OBT.** 
1. En la información provista por la herramienta utilizada (DBeaver, DataGrip, etc) ¿se ven diferencias al momento de realizar las consultas para obtener la información solicitada al comienzo?** 

Ejercicio 2 

Utilizando la misma base de datos, se desea realizar un análisis de la performance de los distintos productos, por ejemplo: 

- ¿Cuál es el producto que más se vende en términos de cantidad y de montos? 
- ¿Algún producto solo se vende en una ubicación? 
- ¿Cuál es el top 10 de los productos vendidos en términos de cantidad? 
1. ¿Existen dos productos que siempre se vendan juntos? 
1. Diseñar un esquema estrella que responda a estas inquietudes utilizando las tablas provistas en la base de datos **ecommerce\_dwh.** 
1. Desarrollar en DBT los modelos necesarios para la construcción del Data Mart mencionado.** 
1. Diseñar y desarrollar, pero ahora utilizando el enfoque OBT.** 

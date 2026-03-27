

> ![Natural skin +](./centro_estetico_inicio.jpeg)

# Centro Estetico - Gestión de Procedimientos, Citas y Productos

Diseño de una base de datos para un Centro Estético Integral que ofrece diversos procedimientos, vende productos y requiere una gestión detallada de citas y personal. 
Clientes: Información básica, historial de visitas, alergias o condiciones médicas relevantes para los tratamientos, y su programa de fidelización. 
Procedimientos y Servicios: Clasificación de los servicios (ej. Faciales, Corporales, Depilación), con detalles como nombre, descripción, duración promedio, precio base, y los materiales/productos requeridos para su ejecución. 
Citas: Gestión de las citas programadas, incluyendo fecha, hora, cliente, procedimiento(s) solicitado(s), el especialista asignado y el estado de la cita (pendiente, completada, cancelada). 
Especialistas/Personal: Información del personal, sus habilidades/certificaciones, y su disponibilidad horaria para la programación de citas. 
Inventario/Productos: Controlar el stock de productos utilizados en los procedimientos y los productos vendidos directamente a los clientes, incluyendo proveedores y movimientos de inventario. 
El diseño debe permitir registrar el detalle del consumo exacto de materiales en cada procedimiento y enlazar la venta de un producto a una cita específica para un seguimiento completo

## Tabla de Contenidos

1. [Presentación del proyecto](#presentación-del-proyecto)
2. [Descripción](#descripción)
3. [Tecnologías Utilizadas](#tecnologías-utilizadas)
4. [Esquema de Base de Datos](#esquema-de-base-de-datos)
5. [Tablero de análisis](#tablero-de-análisis)

---

## Presentación del proyecto

El siguiente enlace te llevará a la presentación del proyecto completo CENTRO ESTÉTICO NATURAL SKIN + donde vas a encontrar las herramientas usadas en el manejo de los datos, las conslusiones que arrojó el análisis y la estrategia propuesta por el grupo de trabajo.

> [Presentacion diapositivas](https://uao-my.sharepoint.com/:p:/r/personal/johana_mar_barrada_uao_edu_co/_layouts/15/Doc.aspx?sourcedoc=%7B48FFF4FC-3574-4B9B-8451-95A584DE94B5%7D&file=PRESENTACI%C3%93N%201.pptx&action=edit&mobileredirect=true&wdOrigin=SEARCHENGINE.GOOGLE%2CAPPHOME-WEB.UNAUTH%2CAPPHOME-WEB.SHELL.SIGNIN%2CAPPHOME-WEB.BANNER.UPLOAD&wdPreviousSession=e759b0e7-d02c-4af7-82fb-703a8751c9d0&wdPreviousSessionSrc=AppHomeWeb&ct=1774499977741)

## Descripción

Trabajamos la base de datos para proporcionar la infraestructura esencial en la gestión del centro estético, permitiendo administrar de manera eficiente la información de clientes, servicios, productos, citas y especialistas. Incluye tablas normalizadas y relaciones que garantizan la integridad de los datos y optimizan el análisis para la toma de decisiones estratégicas orientadas a optimizar su operación, mejorar la experiencia del cliente y ser más rentable.

## Tecnologías Utilizadas

- ![SQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white) - Sistema de gestión de base de datos relacional.
- ![Python](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue) - Población de datos y creación de interfaz cliente y administrador.
- ![PowerBI](https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=Power%20BI&logoColor=white) - Herramienta para realizar y gestionar migraciones de bases de datos en Python.

## Esquema de Base de Datos

### Diagrama Relacional

> ![Diagrama ER](./modelo_relacional.png)

### Código de Python 

Este código nos lleva a la carga de datos ficticios de las tablas que conforman la base de datos creada para el centro estetico por medio de la libreria faker.

> [script_python_centro_estetico](https://raw.githubusercontent.com/jonathanUpeguiRestrepoDataAnalist/Betek_Centro_Estetico/refs/heads/main/SCRIPT%20PYTHON%20CENTRO%20ESTETICO.ipynb)

## Tablero de análisis

En el enlace a continuación, se podrá visualizar el dashboard del tablero en power BI, el cual nos arroja el estado actual del centro estético, a partir del cual generamos una propuesta de estrategias orientadas a optimizar su operación, mejorar la experiencia del cliente y ser más rentable. 

> [Tablero Centro Estetico](https://app.powerbi.com/groups/me/reports/26744d89-2b1c-4b92-b9e7-ef822b6630fe/9bbd950644177d44b4ee?experience=power-bi)

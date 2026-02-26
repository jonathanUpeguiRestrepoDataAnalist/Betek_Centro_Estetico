# Betek_Centro_Estetico
Centro Estético: Gestión de Procedimientos, Citas y Productos

Diseño de una base de datos para un Centro Estético Integral que ofrece diversos procedimientos, vende productos y requiere una gestión detallada de citas y personal. 
Clientes: Información básica, historial de visitas, alergias o condiciones médicas relevantes para los tratamientos, y su programa de fidelización. 
Procedimientos y Servicios: Clasificación de los servicios (ej. Faciales, Corporales, Depilación), con detalles como nombre, descripción, duración promedio, precio base, y los materiales/productos requeridos para su ejecución. 
Citas: Gestión de las citas programadas, incluyendo fecha, hora, cliente, procedimiento(s) solicitado(s), el especialista asignado y el estado de la cita (pendiente, completada, cancelada). 
Especialistas/Personal: Información del personal, sus habilidades/certificaciones, y su disponibilidad horaria para la programación de citas. 
Inventario/Productos: Controlar el stock de productos utilizados en los procedimientos y los productos vendidos directamente a los clientes, incluyendo proveedores y movimientos de inventario. 
El diseño debe permitir registrar el detalle del consumo exacto de materiales en cada procedimiento y enlazar la venta de un producto a una cita específica para un seguimiento completo.
Entidades: cliente, procedimiento/servicio, cita, especialista, producto, paquete
Atributos: 
Cliente: ID_Cliente, nombre, teléfono, correo electrónico, dirección, condición médica, historial visitas
Procedimiento/Servicio: ID_Procedimiento, nombre, descripción, duración promedio, precio base, materiales
Cita: ID_Cita, fecha, hora, ID_cliente, ID_procedimiento, ID_especialista asignado, estado
Especialista: ID_Especialista, nombre, teléfono, correo electrónico, habilidad/certificación, agenda
Producto: ID_ Producto, nombre, descripción, stock, precio, ID_ proveedor

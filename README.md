Proyecto de Gestión de Pagos

Descripción
Este proyecto implementa un sistema de gestión de pagos que permite:
Registrar un pago con los siguientes atributos:

Concepto
Cantidad de productos
Quién realiza el pago
A quién se le paga
Monto
Estatus del pago
Verificar el estatus del pago.
Modificar el estatus del pago.
Notificar cambios en el estatus del pago a un tópico de Kafka.


Tecnologías Utilizadas

Java 17
Spring Boot 3.2.0+
MySQL 8.0.29+
Kafka 3.2.3+
JUnit
Docker

Este proyecto consta de cuatro servicios, será necesario clonar los siguientes repositorios:

https://github.com/gabrielitium/pms-proveedores-services.git
https://github.com/gabrielitium/pms-productos-services.git
https://github.com/gabrielitium/pms-clientes-services.git
https://github.com/gabrielitium/pms-pagos-services.git

Cada microservicio se conectará a su correspondiente esquema:
![image](https://github.com/user-attachments/assets/2e3071f9-3fc5-4f67-a99d-5e518cf088cc)

En este repositorio podrá encontrar los archivos sql para creación de las tablas de cada esquema.

![image](https://github.com/user-attachments/assets/d4c4fd5e-117b-4bef-a241-41d71252c73c)
![image](https://github.com/user-attachments/assets/d6457257-084f-4283-b522-15b5cf3c12be)
![image](https://github.com/user-attachments/assets/bc23465f-37a8-4a54-b0b2-66d720484b91)
![image](https://github.com/user-attachments/assets/6160660c-6506-442a-8c13-415937613e46)


El proyecto fue probado en un ambiente docker compose, con una distribución debian 12.
![image](https://github.com/user-attachments/assets/5fd53433-fbad-4082-9959-8bad0f521bd5)







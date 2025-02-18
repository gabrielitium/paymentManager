# 🚀 Proyecto de Gestión de Pagos

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

| Tecnología  | Versión Recomendada |
|------------|--------------------|
| ☕ **Java** | 17+ |
| 🌱 **Spring Boot** | 3.2.0+ |
| 🗄️ **MySQL** | 8.0.29+ |
| 📡 **Kafka** | 3.2.3+ |
| 🧪 **JUnit** | Última versión |
| 🐳 **Docker** | Última versión |

Este proyecto consta de cuatro servicios, será necesario clonar los siguientes repositorios:

### 1️⃣ Clonar el repositorio
```bash
git clone https://github.com/gabrielitium/pms-proveedores-services.git
```
```bash
git clone https://github.com/gabrielitium/pms-productos-services.git
```
```bash
git clone https://github.com/gabrielitium/pms-clientes-services.git
```
```bash
git clone https://github.com/gabrielitium/pms-pagos-services.git
```

Cada microservicio se conectará a su correspondiente esquema:

![image](https://github.com/user-attachments/assets/2e3071f9-3fc5-4f67-a99d-5e518cf088cc)

En este repositorio podrá encontrar los archivos sql para creación de las tablas de cada esquema.

El proyecto fue probado en un ambiente docker compose, con una distribución debian 12.







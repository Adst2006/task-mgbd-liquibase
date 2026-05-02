# Investigación: Gestión de Bases de Datos con Liquibase

## Introducción a Liquibase
Liquibase es una biblioteca de código abierto e independiente del motor de base de datos que permite rastrear, gestionar y aplicar cambios en el esquema de la base de datos. En el desarrollo de software moderno, la gestión manual de scripts SQL es propensa a errores y dificulta la sincronización entre diferentes entornos (desarrollo, pruebas, producción). Liquibase resuelve esto tratando el esquema de la base de datos como código, permitiendo el control de versiones estricto.

## Conceptos Fundamentales

### Changelog (Registro de Cambios)
El **Changelog** es el archivo raíz donde se declaran todos los cambios que deben aplicarse a la base de datos. Puede estar en formatos como XML, YAML, JSON o SQL formateado. Su función es actuar como un libro mayor que orquesta el orden de ejecución de las migraciones.

### Changeset (Conjunto de Cambios)
Un **Changeset** es la unidad mínima de cambio en Liquibase. Cada changeset se identifica por un `id` y un `author`. Liquibase utiliza una tabla interna (`DATABASECHANGELOG`) para registrar qué changesets ya han sido ejecutados, garantizando que cada cambio se aplique exactamente una vez.

### Rollback (Reversión)
El **Rollback** es la capacidad de deshacer cambios aplicados. Permite volver a un estado anterior del esquema en caso de errores. Liquibase puede generar rollbacks automáticos para operaciones simples (como crear una tabla) o requerir scripts manuales para operaciones complejas (como borrar una columna con datos).

## Lenguajes de Definición y Manipulación

### DDL (Data Definition Language)
El **DDL** se utiliza para definir la estructura física de la base de datos. Incluye comandos como `CREATE`, `ALTER` y `DROP`. En este proyecto, los scripts DDL crean las tablas `persona`, `rol`, `usuario`, `producto`, `factura` y `detalle_factura`.

### DML (Data Manipulation Language)
El **DML** se encarga de la manipulación de los datos contenidos en las estructuras definidas por el DDL. Incluye operaciones como `INSERT`, `UPDATE` y `DELETE`. Es fundamental para poblar la base de datos con datos de prueba coherentes y validar la lógica de negocio.

### Docker Compose
**Docker Compose** es una herramienta para definir y ejecutar aplicaciones multi-contenedor. En este taller, permite orquestar simultáneamente el motor de PostgreSQL y la herramienta Liquibase, asegurando que ambos servicios compartan la misma red y que Liquibase solo comience a trabajar cuando la base de datos esté lista ("healthy").

### Migraciones de Base de Datos
Las **Migraciones** son una técnica que permite evolucionar el esquema de una base de datos de manera incremental y reversible. En lugar de compartir volcados de bases de datos completos (dumps), los desarrolladores comparten pequeños scripts (migraciones) que se aplican secuencialmente, permitiendo que todos los miembros del equipo tengan la misma versión exacta del esquema.

## Conclusión
La integración de Liquibase con contenedores Docker facilita un entorno de desarrollo reproducible y profesional, asegurando que la base de datos evolucione de forma controlada y documentada bajo la metodología de "Database as Code".


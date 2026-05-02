# task-mgbd-liquibase

Este repositorio contiene la solución al taller investigativo y práctico de la asignatura **Modelado y Gestión de Base de Datos**. Se ha implementado una base de datos relacional utilizando **PostgreSQL**, orquestada con **Docker Compose** y gestionada mediante **Liquibase** para el control de versiones de la estructura (DDL) y los datos (DML).

## Estructura del Repositorio

Siguiendo los lineamientos institucionales de **CORHUILA**, el proyecto se organiza de la siguiente manera:

- `docker-compose.yml`: Definición de los servicios de Base de Datos y Liquibase.
- `liquibase.properties`: Configuración de conexión y rutas para Liquibase.
- `db/changelog/`:
  - `db.changelog-master.yaml`: Archivo maestro de migraciones.
  - `ddl/`: Scripts de creación de las 6 tablas autorizadas.
  - `dml/`: Scripts de inserción, actualización y eliminación de datos.
- `db/scripts/queries/`: Consultas SQL para validación de datos.
- `docs/`:
  - `investigacion-liquibase.md`: Documento con la investigación teórica solicitada.
  - `evidencias.md`: Capturas de texto y logs de la ejecución exitosa.

## Requisitos Previos

- Docker y Docker Compose instalados.

## Instrucciones de Ejecución (Paso a Paso)

Para garantizar una validación limpia, siga estos comandos en orden:

1. **Levantar el entorno:**
   ```bash
   docker compose up -d
   ```
   *Esto iniciará la base de datos `mgbd_liquibase` y ejecutará automáticamente las migraciones.*

2. **Validación manual de Liquibase (Opcional):**
   Si desea validar el estado o forzar una actualización manualmente:
   ```bash
   docker compose run --rm liquibase validate
   docker compose run --rm liquibase status --verbose
   ```

3. **Verificar la estructura (DDL):**
   Compruebe que las 6 tablas existen:
   ```bash
   docker compose exec db psql -U postgres -d mgbd_liquibase -c "\dt"
   ```

4. **Verificar los datos (DML):**
   Ejecute una consulta básica para validar la carga de información:
   ```bash
   docker compose exec db psql -U postgres -d mgbd_liquibase -c "SELECT * FROM persona;"
   ```

## Tablas del Modelo
El proyecto cumple estrictamente con el alcance obligatorio de 6 tablas:
1. `persona`
2. `rol`
3. `usuario`
4. `producto`
5. `factura`
6. `detalle_factura`

## Entrega
- **Asignatura:** Modelado y Gestión de Base de Datos
- **Entregable:** Taller investigativo: construcción de base de datos con Liquibase
- **Institución:** CORHUILA

# Evidencias de Ejecución - Task MGBD Liquibase

Este documento contiene las evidencias de que el proyecto se ha implementado correctamente siguiendo los requerimientos de la asignatura **Modelado y Gestión de Base de Datos**.

## 1. Infraestructura con Docker

Se han utilizado contenedores para aislar la base de datos (PostgreSQL 15) y el servicio de migraciones (Liquibase 4.25.0).

**Comando de levantamiento:**
```bash
docker compose up -d
```

**Estado de los contenedores:**
```bash
[+] Running 2/2
 ✔ Container postgres_db        Healthy
 ✔ Container liquibase_service  Started
```

## 2. Validación de Liquibase

Se ha verificado que Liquibase reconoce y aplica correctamente los changelogs.

**Ejecución exitosa de update:**
```text
Liquibase: Update has been successful. Rows affected: 29
Liquibase command 'update' was executed successfully.
```

## 3. Estructura de la Base de Datos (DDL)

Se han creado las 6 tablas autorizadas sin tablas adicionales.

**Tablas creadas:**
```text
                 List of relations
 Schema |         Name          | Type  |  Owner   
--------+-----------------------+-------+----------
 public | databasechangelog     | table | postgres
 public | databasechangeloglock | table | postgres
 public | detalle_factura       | table | postgres
 public | factura               | table | postgres
 public | persona               | table | postgres
 public | producto              | table | postgres
 public | rol                   | table | postgres
 public | usuario               | table | postgres
(8 rows)
```

## 4. Carga de Datos y Operaciones (DML)

Se han insertado datos de prueba en todas las tablas y se han realizado operaciones de actualización (update de precio de producto) y eliminación (borrado de rol excedente).

**Verificación de datos en tabla `persona`:**
```text
 id | nombre | apellido |    dni    |          email          | telefono  
----+--------+----------+-----------+-------------------------+-----------
  1 | Juan   | Perez    | 12345678A | juan.perez@example.com  | 600111222
  2 | Maria  | Gomez    | 87654321B | maria.gomez@example.com | 600333444
  3 | Carlos | Ruiz     | 11223344C | carlos.ruiz@example.com | 600555666
(3 rows)
```

**Verificación de datos en tabla `producto` (después de update):**
```text
 id |      nombre      | precio  | stock 
----+------------------+---------+-------
  1 | Laptop Pro       | 1150.00 |    10
  2 | Monitor 4K       |  350.00 |    15
  3 | Teclado Mecánico |   80.00 |    50
```

## 5. Consultas de Validación

Se incluyen scripts de consulta en `db/scripts/queries/` para validar la integridad de las relaciones (facturación y detalles).

---
**Asignatura:** Modelado y Gestión de Base de Datos  
**Estudiante:** [Nombre del Estudiante]  
**Institución:** CORHUILA

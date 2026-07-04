# 🚀 Proyecto ETL para la Integración de Datos de Comercializadora UTVT S.A. de C.V.

![SQL Server](https://img.shields.io/badge/SQL%20Server-2022-red)
![SSIS](https://img.shields.io/badge/SSIS-ETL-blue)
![Git](https://img.shields.io/badge/Git-Version%20Control-orange)
![GitHub](https://img.shields.io/badge/GitHub-Repository-black)
![Release](https://img.shields.io/badge/Release-1.0-success)

---

# 📖 Descripción General

Este proyecto implementa un proceso **ETL (Extract, Transform and Load)** desarrollado mediante **SQL Server Integration Services (SSIS)** con el objetivo de integrar información proveniente de archivos CSV hacia un Data Warehouse denominado **DWUTVTVentas**.

Durante el proceso se realizan actividades de extracción, validación, transformación y carga de datos, garantizando la calidad, consistencia e integridad de la información almacenada.

Además, el proyecto incorpora mecanismos de automatización, auditoría, control de errores y administración del código fuente utilizando **Git** y **GitHub**.

---

# 🎯 Objetivo General

Diseñar e implementar un proceso ETL capaz de integrar información de Clientes, Productos y Ventas hacia un Data Warehouse, asegurando la correcta validación, transformación y almacenamiento de los datos.

---

# 🎯 Objetivos Específicos

- Extraer información desde archivos CSV.
- Validar reglas de negocio.
- Transformar tipos de datos.
- Eliminar registros inválidos.
- Registrar errores encontrados durante la carga.
- Cargar información válida al Data Warehouse.
- Registrar auditoría del proceso ETL.
- Automatizar el procesamiento de archivos.
- Administrar el proyecto mediante Git y GitHub.

---

# 🛠 Tecnologías Utilizadas

- SQL Server 2022
- SQL Server Integration Services (SSIS)
- SQL Server Management Studio (SSMS)
- PowerShell
- Git
- GitHub
- Visual Studio 2022

---

# 📂 Estructura del Proyecto

```
Proyecto_ETL_UTVT/

│
├── data/
│   ├── entrada/
│   │   ├── Clientes.csv
│   │   ├── Productos.csv
│   │   └── Ventas.csv
│   │
│   ├── procesados/
│   └── errores/
│
├── database/
│   └── create_DWUTVTVentas.sql
│
├── ssis/
│   └── Proyecto_ETL_UTVT/
│
├── docs/
│   ├── Diagrama_ETL.pdf
│   ├── Arquitectura_Proyecto.pdf
│   └── Diccionario_Datos.xlsx
│
├── evidencias/
│   ├── capturas_git/
│   ├── capturas_sql/
│   └── capturas_ssis_video/
│
├── README.md
├── .gitignore
└── Release_1.0
```

---

# 🏛 Arquitectura del Proyecto

El proyecto está dividido en cuatro capas principales:

## 📂 Capa de Origen

Archivos CSV:

- Clientes.csv
- Productos.csv
- Ventas.csv

↓

## ⚙️ Capa ETL

Procesos implementados mediante SSIS:

- Extracción
- Ordenamiento
- Conversión de datos
- Validaciones
- Lookups
- Columnas derivadas
- Manejo de errores
- Carga

↓

## 🗄 Capa de Base de Datos

Data Warehouse:

- DimCliente
- DimProducto
- FactVentas
- LogProceso
- LogErrores

↓

## 🤖 Capa de Automatización

- Movimiento de archivos
- Compresión ZIP
- Registro de auditoría
- Evidencias del proceso

---

# 🔄 Flujo ETL

El flujo implementado realiza las siguientes actividades:

1. Lectura de archivos CSV.
2. Ordenamiento de registros.
3. Conversión de tipos de datos.
4. Validación mediante Conditional Split.
5. Búsqueda de claves mediante Lookup.
6. Registro de errores.
7. Transformación mediante Derived Column.
8. Carga hacia FactVentas.
9. Registro de auditoría.
10. Compresión automática de archivos procesados.

---

# ✔ Validaciones Implementadas

Durante la ejecución se verifican las siguientes reglas:

- Cliente existente.
- Producto existente.
- Cantidad mayor a cero.
- Precio mayor a cero.
- Eliminación de registros duplicados.
- Conversión correcta de tipos de datos.
- Integridad referencial mediante Lookup.
- Cálculo automático de Subtotal.
- Cálculo automático de IVA.
- Cálculo automático del Total.

---

# ⚡ Automatización

El proyecto automatiza las siguientes tareas:

- Registro del inicio del proceso.
- Registro del fin del proceso.
- Auditoría de ejecución.
- Registro de errores.
- Compresión de archivos procesados.
- Organización automática de archivos.

---

# 📊 Base de Datos

El Data Warehouse está compuesto por las siguientes tablas:

### Dimensiones

- DimCliente
- DimProducto

### Tabla de Hechos

- FactVentas

### Auditoría

- LogProceso
- LogErrores

---

# 📚 Diccionario de Datos

El diccionario completo se encuentra en:

```
docs/Diccionario_Datos.xlsx
```

---

# 📷 Evidencias

El proyecto incluye evidencia de:

- Ejecución correcta del paquete.
- Flujo ETL.
- Base de datos.
- FactVentas.
- LogProceso.
- LogErrores.
- Registros rechazados.
- Archivos ZIP.
- Historial Git.
- Branches.
- Pull Requests.
- Release 1.0.

Todas las capturas se encuentran dentro de la carpeta:

```
evidencias/
```

---

# 📈 Resultados Obtenidos

Durante las pruebas realizadas se obtuvo:

- Integración correcta de Clientes.
- Integración correcta de Productos.
- Integración correcta de Ventas.
- Registro exitoso de auditoría.
- Registro correcto de errores.
- Generación automática de archivos comprimidos.
- Control de versiones mediante Git.
- Administración del proyecto mediante GitHub.

---

# 🌿 Control de Versiones

Se implementó un flujo de trabajo basado en Git utilizando:

- Rama main
- Rama feature/clientes
- Rama feature/productos
- Rama feature/ventas

Cada funcionalidad fue desarrollada en su propia rama y posteriormente integrada mediante Pull Request.

---

# 🚀 Release

Se publicó la versión estable:

**Release 1.0**

Incluye:

- Carga de Clientes
- Carga de Productos
- Carga de Ventas
- Validaciones
- Auditoría
- Manejo de errores
- Automatización
- Documentación completa

---

# 🔮 Mejoras Futuras

Como trabajo futuro se propone:

- Implementar cargas incrementales.
- Integrar SQL Server Agent.
- Incorporar nuevas dimensiones.
- Agregar más validaciones de negocio.
- Integración con Power BI.
- Monitoreo en tiempo real.

---

# 👨‍💻 Autor

**Uriel Gutiérrez Serrano**

Ingeniería en Desarrollo y Gestión de Software

Universidad Tecnológica del Valle de Toluca (UTVT)

2026

---

# 📜 Licencia

Proyecto desarrollado con fines académicos para la materia de **Integración de Datos mediante ETL**.

Universidad Tecnológica del Valle de Toluca.

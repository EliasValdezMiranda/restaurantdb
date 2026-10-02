<div align="center">
    <img
    src="docs/assets/icon.png"
    alt="PostgreSQL icon"
    width="48"
/>
  <h1 align="center">restaurantdb</h1>
  <h4 align="center">Aplicación CRUD para un restaurante ficticio</h4>
</div>

## ℹ️ Acerca de

* El proyecto restaurantdb implementa una aplicación de escritorio para el manejo de un restaurante genérico, incluyendo el registro de clientes y sus clasificaciones, órdenes, platillos, etc. 
* El proyecto utiliza el lenguaje de programación Java con los componentes de GUI Swing para la creación de una aplicación de escritorio que accede y modifica los registros en una base de datos PostgreSQL.
* Desarrollado como el proyecto final de la materia **Base de Datos I** impartida por el profesor Navarro Hernández Rene Francisco en el semestre 2025-2. Desarrollado en colaboración con Santillanes Hernández Ángel Andrés.

## ⚙️ Dependencias
* JDK 24
* PostgreSQL 18
* Gradle (Wrapper incluído con el repositorio)
* (OPCIONAL) pgAdmin 4
* (OPCIONAL) IntelliJ IDEA o Apache NetBeans

## 📋 Instrucciones de Uso

1. Instalar JDK 24 y PostgreSQL 18.
2. Importar el esquema de la base de datos (**`docs/postgreSQL_scripts/restaurantdb_schema.sql`**) y, opcionalmente, los datos de ejemplo de la base de datos (**`docs/postgreSQL_scripts/restaurantdb_data.sql`**) a la base de datos por utilizar.

> [!IMPORTANT]
> En el desarrollo del proyecto, se utilizó pgAdmin 4 para crear e importar el esquema de la base de datos, así como la información de esta. Para importar los archivos utilizando pgAdmin, se siguen estos pasos:
> 1. Crear una base de datos vacía de nombre **`restaurantdb`** (Aunque incluímos las instrucciones para crear la base de datos, funciona mejor al trabajar con una existente)
> 2. Seleccionar la base de datos con click derecho y dar click a "Restore"
> 3. Seleccionar la opción "Plain" el la opción de "Format"
> 4. Seleccionar el archivo **`restaurantdb_schema.sql`**
> 5. Restaurar
> 6. Repetir los pasos 2 a 5 con el archivo **`restaurantdb_data.sql`**

3. Utilizar **`gradle`** para obtener las dependencias del proyecto.

> [!IMPORTANT]
> Se recomienda utilizar IntelliJ IDEA para automatizar las tareas de configuración del proyecto. Esto involucra abrir la carpeta raíz del proyecto y dar click al archivo **`build.gradle.kts`**. Apache NetBeans también permite configurar y ejecutar el proyecto, como opción alternativa.

4. Ejecutar el archivo **`src/main/java/com/login/Login.java`** para correr el programa.

El programa ofrecerá una pantalla inicial para configurar las credenciales de acceso a la base de datos con la posibilidad de guardar estas para futuros accesos.

## 🔍 Estructura del Proyecto

```text
restaurantdb
├── docs: Documentación del sistema
│   ├── assets: Archivos utilizados en el repositorio
│   ├── design: Especificación de diseño de la base de datos 
│   ├── postgreSQL_scripts: Scripts de configuración de la base de datos
├── gradle: Configuración del wrapper de gradle
├── src: Código fuente en Java del sistema
├── .gitignore: Archivos ignorados por el repositorio
└── build.gradle.kts: Especificacón de dependencias del sistema
└── gradlew: Wrapper de gradle
└── gradlew.bat: Archivo de procesos de gradle para Windows
└── settings.kts: Configuración del manejo de dependencias de gradle
```

## 📷 Capturas de Pantalla

![Pantalla de bienvenida](/docs/assets/Screenshot1.png?raw=true "Pantalla de bienvenida")
![Vista de clientes](/docs/assets/Screenshot2.png?raw=true "Vista de clientes")
![Vista de manejo de órdenes](/docs/assets/Screenshot3.png?raw=true "Vista de manejo de órdenes")

# PDF_VIEW
## EQUIPO
1. Guillermo Ramos encargado de 
2. Richard Vásquez encargado de
3. Marcelo Lillo encargado de

## Caso de uso
---------------
Caso de Uso: Apertura y Visualización de Documentos PDF desde la Aplicación Móvil

Descripción:
En el contexto de la aplicación a desarrollar, se trata de visualizar los documentos subidos a una plataforma educativa, donde el usuario podra abrir documentos de tipo PDF, tanto estudiantes como profesores, a menudo necesitan acceder y revisar documentos en formato PDF, como notas de clase, asignaciones, material de lectura y documentos de referencia.

Flujo del Caso de Uso:
Para el flujo se especifican las siguientes interaccines que tendra el usuario con el sistema

Inicio de Sesión:
El usuario inicia sesión en la aplicación educativa.
Selección de Materia o Curso:

Selección de Documento:

El usuario elige un documento en formato PDF que desea revisar.
Apertura y Visualización del PDF:

La aplicación abre el visor de PDF incorporado, permitiendo al usuario visualizar el contenido del documento directamente dentro de la aplicación.
Navegación y Exploración:
El usuario puede navegar por las páginas del PDF, hacer zoom para leer detalles y utilizar herramientas de búsqueda de texto para encontrar 
información específica.

Beneficios:

Acceso Rápido a Recursos Educativos: Los estudiantes y profesores pueden acceder de manera rápida y conveniente a los materiales educativos relevantes directamente desde la aplicación móvil.

Facilita el Estudio y la Preparación: Los usuarios pueden revisar notas de clase, asignaciones y otros documentos importantes en cualquier momento y lugar, lo que facilita la preparación para exámenes y clases.

Reducción del Uso de Papel: Al proporcionar documentos en formato digital, la aplicación contribuye a la reducción del uso de papel, siendo respetuosa con el medio ambiente.


## Diseño
---------------

## Implementación
------------

## Arquitectura
### Estructura de Archivos Propuesta:

La estructura de archivos para el proyecto PDF VIEW se organiza de la siguiente manera:

```plaintext
visor_pdf/
|-- lib/
|   |-- main.dart
|   |-- screens/
|   |   |-- home_screen.dart
|   |   |-- new_screen.dart
|   |-- widgets/
|   |   |-- pdf_button.dart   (falta implementarlo)
|-- assets/
|   |-- images/
|   |   |-- pdfview.png
|-- ...
```

- **`lib/screens/`:** Contiene las pantallas principales de la aplicación.
- **`lib/widgets/`:** Contiene widgets reutilizables en las pantallas.
- **`assets/`:** Contiene archivos estáticos como imágenes.

### Arquitectura de Software Utilizada:

La arquitectura de software utilizada sigue una estructura de capas más simple:

### Descripción de Capas:

1. **Capa de Presentación (UI):**
   - **Ubicación:** En la carpeta `lib/screens/`.
   - **Propósito:** Contiene las pantallas y widgets responsables de la interfaz de usuario.

2. **Widgets Reutilizables:**
   - **Ubicación:** En la carpeta `lib/widgets/`.
   - **Propósito:** Contiene widgets reutilizables en varias pantallas.

### Diagrama de Capas:

```plaintext
  +--------------------------+
  |   Capa de Presentación   |
  +--------------------------+
                |
  +--------------------------+
  |  Widgets Reutilizables   |
  +--------------------------+
```



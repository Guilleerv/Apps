# PDF_VIEW
## EQUIPO
1. Guillermo Ramos Arquitecto de Software
2. Richard Vásquez Desarrollador Principal
3. Marcelo Lillo Encargado de Diseño

## Caso de uso
---------------
**Caso de Uso: Apertura y Visualización de Documentos PDF desde la Aplicación Móvil**

*Descripción:* En el contexto de la aplicación a desarrollar, se trata de visualizar los documentos para una universidad, donde tanto estudiantes como profesores podrán abrir documentos en formato PDF, como notas de clase, asignaciones, material de lectura y documentos de referencia.

*Flujo del Caso de Uso:*

1. **Selección de Documento:**
   - El usuario selecciona un documento en formato PDF que desea revisar.

2. **Apertura y Visualización del PDF:**
   - La aplicación abre el visor de PDF incorporado, permitiendo al usuario visualizar el contenido del documento directamente dentro de la aplicación.

3. **Navegación:**
   - El usuario puede navegar por las páginas del PDF, hacer zoom para leer detalles.

4. **Compartir**
   - EL usuario puede compartir el documento directamente desde la aplicación.

*Beneficios:*

- **Acceso Rápido a Recursos Educativos:** 
  - Los estudiantes y profesores pueden acceder de manera rápida y conveniente a los materiales educativos relevantes directamente desde la aplicación móvil.

- **Facilita el Estudio y la Preparación:** 
  - Los usuarios pueden revisar notas de clase, asignaciones y otros documentos importantes en cualquier momento y lugar, lo que facilita la preparación para exámenes y clases.

- **Reducción del Uso de Papel:** 
  - Al proporcionar documentos en formato digital, la aplicación contribuye a la reducción del uso de papel, siendo respetuosa con el medio ambiente.

## Diseño

![image](https://github.com/Guilleerv/Apps/assets/115674130/1246c02a-b627-4679-8656-8e4458999320)

## Implementación

Para la implementación, utilizo `flutter_pdfview` y `file_picker`, las cuales ayudan con el acceso y la visualización del archivo PDF. Se establecieron 2 pantallas, `home_screen` y `new_screen`.

- **`home_screen`**: Muestra la pantalla principal del archivo y mediante `file_picker` solicita la ruta del archivo PDF contenido en el celular. Luego, entrega esta ruta a `new_screen`.

- **`new_screen`**: Hace uso de la ruta proporcionada y, mediante la utilización de `flutter_pdfview`, maneja la visualización en la nueva pestaña. Se considera el manejo de errores y se renderiza el PDF dentro de la pantalla.

Esta implementación permite al usuario seleccionar un archivo PDF desde su dispositivo en la pantalla principal (`home_screen`) y luego visualizarlo en detalle en la nueva pantalla (`new_screen`) utilizando `flutter_pdfview`. Todo el proceso incluye el manejo cuidadoso de posibles errores para mejorar la robustez de la aplicación.


## Arquitectura
### Estructura de Archivos Propuesta:

La estructura de archivos para el proyecto PDF VIEW se organiza de la siguiente manera:

```plaintext
visor_pdf/
|-- lib/
|   |-- main.dart
|   |-- services/
|   |   |-- pdf_service.dart
|   |-- screens/
|   |   |-- home_screen.dart
|   |   |-- new_screen.dart
|   |-- widgets/
|   |   |-- pdf_button.dart   
|-- assets/
|   |-- images/
|   |   |-- pdfview.png
|-- ...
```

- **`lib/screens/`:** Contiene las pantallas principales de la aplicación.
- **`lib/widgets/`:** Contiene widgets reutilizables en las pantallas.
- **`lib/services/`:** Contiene servicios especificos relacionados con la manipulación de los archivos PDF.
- **`assets/`:** Contiene archivos estáticos como imágenes.

### Arquitectura de Software Utilizada:

La arquitectura de software utilizada sigue una estructura de capas más simple:

### Descripción de Capas:

1. **Capa de Presentación (UI):**
   - **Ubicación:** En la carpeta `lib/screens/`.
   - **Propósito:** Contiene las pantallas responsables de la interfaz de usuario, en este caso serían dos, la vista principal del usuario y la pantalla dónde se visualiza el PDF.

2. **Widgets Reutilizables:**
   - **Ubicación:** En la carpeta `lib/widgets/`.
   - **Propósito:** Contiene widgets reutilizables en varias pantallas, en este caso es un botón que se reutiliza en ambas pantallas.

3. **Capa de Servicios:**
   - **Ubicación:** En la carpeta `lib/services/`.
   - **Propósito:** Contiene servicios específicos, como `pdf_service.dart`, que maneja la lógica de manipulación de archivos PDF.

### Diagrama de Capas:

```plaintext
  +--------------------------+
  |   Capa de Presentación   |
  +--------------------------+
                |
  +--------------------------+
  |  Widgets Reutilizables   |
  +--------------------------+
                |
  +--------------------------+
  |    Capa de Servicios     |
  +--------------------------+
```



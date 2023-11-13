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



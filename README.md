# PDF_VIEW
## EQUIPO
1. Guillermo Ramos encargado de 
2. Richard Vásquez encargado de
3. Marcelo Lillo encargado de

## Caso de uso
---------------

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
- **`lib/widgets/`:** Contiene widgets reutilizables en varias pantallas.
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



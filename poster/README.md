# Plantilla de Póster Científico (A0 / Gran Formato)

Plantilla en LaTeX diseñada para la presentación de pósters científicos en congresos, simposios y jornadas universitarias. Basada en la clase `a0poster` y potenciada con `tcolorbox`, `tikz` y `pgfplots` para un acabado visual profesional, nítido y modular.

---

## Características Principales

- **Dimensiones Reales**: Configurado de forma predeterminada a **90 cm (ancho) × 130 cm (alto)** (vertical), fácilmente adaptable a **DIN A0** (84.1 cm × 118.9 cm) o **DIN A1**.
- **Diseño Modular por Tarjetas (`card`)**: Cada sección se encapsula en una caja `tcolorbox` estilizada con cabecera de color institucional.
- **Cabecera Institucional Superior**: Incluye espacio para el logotipo de la institución, nombre de la universidad, departamento académico, título destacado, autores y afiliaciones.
- **Gráficas Vectoriales Nativas**: Ejemplo completo de gráfica con `pgfplots` que incluye puntos de datos, barras de error, línea de promedio y bandas de incertidumbre sin perder resolución.
- **Comando Seguro de Imágenes (`\safegraphic`)**: Si una imagen no se encuentra en el repositorio o carpeta `figures/`, se dibuja un recuadro de advertencia en lugar de interrumpir la compilación del documento.

---

## Estructura de Archivos

```
poster/
├── main.tex          # Documento fuente principal del póster
├── a0header.ps       # Archivo de encabezado PostScript requerido por a0poster
├── main.pdf          # Póster compilado de ejemplo
├── figures/          # Carpeta para figuras, esquemas y logotipos
│   ├── udlap_logo.png
│   ├── Diagrama_Fresnel.png
│   ├── trayectoria.png
│   ├── PHOTO-2026-10-02-07-00-35.jpg
│   ├── IMG_5736.jpeg
│   └── IMG_5734.jpeg
└── README.md         # Documentación de la plantilla
```

---

## Guía de Personalización

### 1. Cambiar los Colores Institucionales
En el preámbulo de [`main.tex`](main.tex), localiza la sección de colores:
```latex
% Colores predeterminados (UDLAP)
\definecolor{UDLAPorange}{RGB}{242,122,36}
\definecolor{UDLAPdark}{RGB}{51,51,51}
\definecolor{UDLAPbg}{RGB}{253,240,230}
```
Puedes reemplazarlos por los colores de tu propia universidad o institución.

### 2. Modificar las Dimensiones del Papel
En la configuración del paquete `geometry`:
```latex
\usepackage[
  paperwidth=90cm, paperheight=130cm,  % Cambia a 84.1cm x 118.9cm para DIN A0 estándar
  left=2cm, right=2cm,
  top=21cm,
  bottom=4cm
]{geometry}
```

### 3. Logotipo y Datos Institucionales
Reemplaza el archivo `figures/udlap_logo.png` por el logotipo de tu institución y actualiza el texto en la macro `\posterheader`:
```latex
\node[anchor=west, inner sep=0pt] at ([xshift=3cm, yshift=-4cm]current page.north west)
  {\safegraphic[height=4.5cm]{mi_logotipo.png}};
```

### 4. Añadir o Quitar Secciones
Usa el entorno `card` dentro de cualquiera de las dos columnas:
```latex
\begin{card}{Nombre de la Sección}
  Tu contenido aquí...
\end{card}
```

---

## Compilación

### Opción 1: Terminal / Makefile
Desde la raíz del repositorio:
```bash
make poster
```
O directamente dentro de la carpeta `poster/`:
```bash
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

### Opción 2: Overleaf
1. Comprime el contenido de la carpeta `poster/` en un archivo `.zip`.
2. Súbelo a Overleaf como un nuevo proyecto.
3. Asegúrate de compilar con el motor **pdfLaTeX**.

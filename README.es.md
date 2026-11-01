<div align="center">

[![English](https://img.shields.io/badge/Language-English-blue?style=for-the-badge)](README.md)
[![Español](https://img.shields.io/badge/Idioma-Español-orange?style=for-the-badge)](README.es.md)

**[English](README.md)** | **[Español](README.es.md)**

</div>

# Plantillas Científicas en LaTeX: Presentación, Póster y Reporte

Colección integral de plantillas en LaTeX profesionales y modulares para la divulgación académica y científica: presentaciones panorámicas para conferencias o defensas, pósters de gran formato para simposios y artículos o reportes de laboratorio a dos columnas.

Desarrollado originalmente para proyectos de física experimental en la Universidad de las Américas Puebla (UDLAP), y diseñado para adaptarse con facilidad a cualquier institución o disciplina científica.

---

## Estructura del Repositorio

El repositorio está organizado de forma modular e independiente. Cada plantilla contiene su propio archivo fuente `main.tex`, su carpeta de imágenes `figures/`, su documentación dedicada y un archivo PDF de ejemplo listo para consultar:

```
Presentations_Scientific_Poster_template/
├── poster/               # Plantilla de Póster Científico (A0 / Gran Formato)
│   ├── main.tex          # Código fuente LaTeX
│   ├── a0header.ps       # Encabezado PostScript requerido por a0poster
│   ├── main.pdf          # Ejemplo compilado
│   ├── figures/          # Logotipos, esquemas y diagramas
│   └── README.md         # Guía detallada del póster
│
├── presentation/         # Plantilla de Presentación (Beamer 16:9 Panorámica)
│   ├── main.tex          # Código fuente LaTeX
│   ├── main.pdf          # Ejemplo compilado (14 diapositivas)
│   ├── figures/          # Gráficas, montajes y diagramas
│   └── README.md         # Guía detallada de la presentación
│
├── report/               # Plantilla de Reporte / Artículo (Dos Columnas)
│   ├── main.tex          # Código fuente LaTeX
│   ├── main.pdf          # Ejemplo compilado (4 páginas)
│   ├── figures/          # Fotos y esquemas del experimento
│   └── README.md         # Guía detallada del artículo
│
├── .gitignore            # Exclusión de archivos auxiliares de compilación
├── Makefile              # Automatización de compilación y limpieza
├── LICENSE               # Licencia MIT de código abierto
├── README.md             # Documentación en inglés
└── README.es.md          # Documentación en español
```

---

## Plantillas Incluidas

### 1. Póster Científico (`poster/`)
- **Base**: Clase `a0poster` junto con `geometry`, `tcolorbox`, `tikz` y `pgfplots`.
- **Dimensiones**: Configurado en **90 cm × 130 cm** (vertical), adaptable con una sola línea a **DIN A0** (84.1 cm × 118.9 cm) o **DIN A1**.
- **Diseño**: Estructura en 2 columnas con tarjetas (`card`) independientes, cabecera institucional para logotipo, nombre de universidad, departamento, título grande y lista de autores.
- **Gráficas Nativas**: Gráficas vectoriales generadas con `pgfplots` (puntos experimentales, barras de error, promedios y bandas de incertidumbre).
- **Tolerancia a Fallos**: Macro `\safegraphic` que avisa visualmente si falta una imagen sin interrumpir la compilación del documento.
- *Ejemplo incluido*: "Interferencia con el Espejo de Fresnel: determinación de la longitud de onda de un láser He-Ne".

### 2. Presentación Panorámica (`presentation/`)
- **Base**: Clase `beamer` con `[aspectratio=169]` (formato panorámico 16:9).
- **Estilo**: Modo oscuro (*Dark Mode*) con acentos en azul neón (`neonblue`), alto contraste y tipografía diseñada para proyectores y pantallas modernas.
- **Diapositivas TikZ**: Portada y cierre con partición geométrica diagonal.
- **Tipos de Diapositiva**:
  - Objetivos y metas específicas.
  - Marco teórico en dos columnas (ecuaciones y diagrama).
  - Metodología y montaje experimental con fotografías de laboratorio.
  - Resultados y ajustes lineales por regresión.
  - Análisis, discusión y discrepancias.
  - Conclusiones y referencias bibliográficas.
- *Ejemplo incluido*: "Anillos de Newton: Interferencia en Películas Delgadas".

### 3. Reporte / Artículo de Laboratorio (`report/`)
- **Base**: Clase `article` con los paquetes `multicol`, `geometry` y `fancyhdr`.
- **Estructura**: Formato tipo publicación académica (IEEE / *Physical Review*) a dos columnas.
- **Elementos**: Resumen (*abstract*) y palabras clave (*keywords*), ecuaciones numeradas, propagación formal de errores experimentales $(X \pm \delta X)$, tablas de datos y bibliografía en formato estándar.
- *Ejemplo incluido*: "Experimento del espejo de Fresnel".

---

## Cómo Compilar

### Opción A: Mediante Makefile (Recomendado en macOS / Linux)
El repositorio incluye un `Makefile` listo para usar desde la terminal:

```bash
# Compilar todas las plantillas (póster, presentación y reporte):
make all

# Compilar una plantilla específica:
make poster          # Genera poster/main.pdf
make presentation    # Genera presentation/main.pdf
make report          # Genera report/main.pdf

# Eliminar archivos auxiliares de compilación (.aux, .log, .toc, .nav, etc.):
make clean

# Ver lista de comandos disponibles:
make help
```

### Opción B: Directamente con pdfLaTeX
Ingresa a la carpeta de la plantilla deseada y ejecuta dos veces para resolver las referencias cruzadas:

```bash
cd poster
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

### Opción C: Overleaf
1. Descarga o comprime la carpeta de la plantilla que deseas usar (por ejemplo `poster/` o `presentation/`) en formato `.zip`.
2. En [Overleaf](https://www.overleaf.com), selecciona **New Project** > **Upload Project**.
3. Sube el archivo `.zip` y compila usando el motor **pdfLaTeX** predeterminado.

### Opción D: Visual Studio Code
Instala la extensión **LaTeX Workshop**. Al abrir cualquier archivo `main.tex`, presiona `Cmd+Option+B` (macOS) o `Ctrl+Alt+B` (Windows/Linux) para compilar.

---

## Requisitos de LaTeX

Cualquier distribución moderna de TeX funcionará adecuadamente (TeX Live 2021+, MacTeX o MiKTeX). Paquetes principales utilizados:
- `a0poster`, `beamer`, `article`
- `tikz`, `pgfplots`, `tcolorbox`
- `geometry`, `graphicx`, `xcolor`, `booktabs`, `enumitem`, `microtype`, `multicol`, `fancyhdr`
- `babel` (configurado en español con soporte para notación matemática)

---

## Autores y Créditos

Plantillas desarrolladas y utilizadas en proyectos de **Óptica Experimental** en el **Departamento de Actuaría, Física y Matemáticas** de la **Universidad de las Américas Puebla (UDLAP)** por:
- **Ángel Gabriel Munguía Velázquez** ([@AngelGab3](https://github.com/AngelGab3))
- **Alan Iván Ortega Contreras**
- **Luz Stefanía Pérez Huesca**

---

## Licencia

Este proyecto se distribuye bajo la licencia **MIT**. Eres libre de usar, modificar y adaptar estas plantillas para tus proyectos académicos, conferencias y publicaciones. Consulta el archivo [LICENSE](LICENSE) para más detalles.

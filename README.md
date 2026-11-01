# Scientific Presentation, Poster & Paper LaTeX Templates 🔬📊

Colección integral de plantillas en **LaTeX** profesionales y modulares para la divulgación científica: presentaciones para congresos o defensas de tesis, pósters de gran formato para simposios y artículos/reportes de laboratorio a dos columnas.

Diseñado originalmente para proyectos de física experimental en la Universidad de las Américas Puebla (UDLAP), pero 100% adaptable a cualquier institución o disciplina científica.

---

## 📁 Estructura del Repositorio

El repositorio está organizado de forma modular e independiente. Cada plantilla contiene su propio archivo fuente `main.tex`, su carpeta de imágenes `figures/`, su documentación dedicada y un PDF de ejemplo listo para visualizar:

```
Presentations_Scientific_Poster_template/
├── poster/               # 📌 Plantilla de Póster Científico (A0 / Gran Formato)
│   ├── main.tex          # Código fuente LaTeX
│   ├── a0header.ps       # Encabezado PostScript para a0poster
│   ├── main.pdf          # Ejemplo compilado
│   ├── figures/          # Logotipos, esquemas y diagramas
│   └── README.md         # Guía detallada del póster
│
├── presentation/         # 💻 Plantilla de Presentación (Beamer 16:9 Panorámica)
│   ├── main.tex          # Código fuente LaTeX
│   ├── main.pdf          # Ejemplo compilado (14 diapositivas)
│   ├── figures/          # Gráficas, montajes y diagramas
│   └── README.md         # Guía detallada de la presentación
│
├── report/               # 📄 Plantilla de Reporte / Artículo (Dos Columnas)
│   ├── main.tex          # Código fuente LaTeX
│   ├── main.pdf          # Ejemplo compilado (4 páginas)
│   ├── figures/          # Fotos y esquemas del experimento
│   └── README.md         # Guía detallada del artículo
│
├── .gitignore            # Exclusión de archivos auxiliares de compilación
├── Makefile              # Automatización de compilación y limpieza
├── LICENSE               # Licencia MIT de código abierto
└── README.md             # Documentación general del repositorio
```

---

## 🎨 Las 3 Plantillas Incluidas

### 1. 📌 Póster Científico (`poster/`)
- **Base**: Clase `a0poster` con `geometry`, `tcolorbox`, `tikz` y `pgfplots`.
- **Dimensiones**: Configurado en **90 cm × 130 cm** (vertical), adaptable con una línea a **DIN A0** (84.1 cm × 118.9 cm) o **DIN A1**.
- **Diseño**: Estructura en 2 columnas con tarjetas (`card`) independientes, cabecera institucional para logotipo, título grande y autores.
- **Gráficas Nativas**: Gráficas vectoriales en código con `pgfplots` (puntos experimentales, barras de error, promedios y bandas de incertidumbre).
- **Tolerancia a Fallos**: Macro `\safegraphic` que avisa si falta una imagen sin romper la compilación.
- *Ejemplo incluido*: "Interferencia con el Espejo de Fresnel: determinación de la longitud de onda de un láser He-Ne".

### 2. 💻 Presentación Panorámica (`presentation/`)
- **Base**: `beamer` con `[aspectratio=169]` (formato panorámico 16:9).
- **Estilo**: *Dark Mode* moderno con acentos en azul neón (`neonblue`), alto contraste y tipografía nítida para proyectores y pantallas.
- **Diapositivas TikZ**: Portada y cierre con partición geométrica diagonal.
- **Tipos de Diapositiva**:
  - Objetivos y metas específicas.
  - Marco teórico en 2 columnas (ecuaciones + diagrama).
  - Metodología y montaje experimental con fotografías.
  - Resultados y ajustes lineales por regresión.
  - Análisis, discusión y discrepancias.
  - Conclusiones y referencias bibliográficas.
- *Ejemplo incluido*: "Anillos de Newton: Interferencia en Películas Delgadas".

### 3. 📄 Reporte / Artículo de Laboratorio (`report/`)
- **Base**: Clase `article` con `multicol`, `geometry` y `fancyhdr`.
- **Estructura**: Formato tipo publicación académica (IEEE / *Physical Review*) a dos columnas.
- **Elementos**: Resumen (*abstract*) y *keywords*, ecuaciones numeradas, propagación formal de errores experimentales $(X \pm \delta X)$, tablas de datos y bibliografía en formato estándar.
- *Ejemplo incluido*: "Experimento del espejo de Fresnel".

---

## 🚀 Cómo Compilar

### Opción A: Usando el Makefile (Recomendado en Mac/Linux)
El repositorio incluye un `Makefile` listo para usar:

```bash
# Compilar todo el repositorio (póster, presentación y reporte):
make all

# Compilar solo una plantilla específica:
make poster          # Genera poster/main.pdf
make presentation    # Genera presentation/main.pdf
make report          # Genera report/main.pdf

# Eliminar todos los archivos auxiliares (.aux, .log, .toc, .nav, etc.):
make clean

# Ver ayuda de comandos:
make help
```

### Opción B: Directo en Terminal (pdfLaTeX)
Accede a la carpeta de la plantilla deseada y ejecuta dos veces para resolver referencias cruzadas:

```bash
cd poster
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

### Opción C: Overleaf
1. Descarga o comprime la carpeta de la plantilla que deseas usar (por ejemplo `poster/` o `presentation/`) en un archivo `.zip`.
2. En [Overleaf](https://www.overleaf.com), selecciona **New Project** > **Upload Project**.
3. Sube el `.zip` y compila con el motor **pdfLaTeX** predeterminado.

### Opción D: Visual Studio Code
Instala la extensión **LaTeX Workshop**. Al abrir cualquier archivo `main.tex`, presiona `Cmd+Option+B` (Mac) o `Ctrl+Alt+B` (Windows/Linux) para compilar.

---

## 🛠 Requisitos de LaTeX

Cualquier distribución moderna de TeX funcionará (TeX Live 2021+, MacTeX o MiKTeX). Paquetes principales utilizados:
- `a0poster`, `beamer`, `article`
- `tikz`, `pgfplots`, `tcolorbox`
- `geometry`, `graphicx`, `xcolor`, `booktabs`, `enumitem`, `microtype`, `multicol`, `fancyhdr`
- `babel` (configurado en español con soporte para modo matemático)

---

## 👥 Autores y Créditos

Plantillas desarrolladas y utilizadas en proyectos de **Óptica Experimental** en el **Departamento de Actuaría, Física y Matemáticas** de la **Universidad de las Américas Puebla (UDLAP)** por:
- **Ángel Gabriel Munguía Velázquez** ([@AngelGab3](https://github.com/AngelGab3))
- **Alan Iván Ortega Contreras**
- **Luz Stefanía Pérez Huesca**

---

## 📄 Licencia

Este proyecto se distribuye bajo la licencia **MIT**. Eres libre de usar, modificar y adaptar estas plantillas para tus proyectos académicos, conferencias y publicaciones. Consulta el archivo [LICENSE](LICENSE) para más detalles.

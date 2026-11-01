# Plantilla de Presentación Científica (Beamer 16:9 Dark Mode)

Plantilla para diapositivas de conferencias, defensas de tesis y exposiciones académicas basada en LaTeX Beamer. Cuenta con un diseño panorámico (16:9) en modo oscuro (*Dark Mode*) con acentos en azul neón y diapositivas de portada y cierre personalizadas con TikZ.

---

## Características Principales

- **Relación de Aspecto Panorámica**: Formato `16:9` (`\documentclass[aspectratio=169]{beamer}`), ideal para proyectores modernos y pantallas actuales.
- **Estética Dark Mode / Neón**: Paleta elegante con fondo oscuro (`darkbg`, `darkerbg`), texto claro suave de alta legibilidad (`lighttext`) y detalles/títulos en azul brillante (`neonblue`).
- **Portada y Cierre con TikZ**: Diseños geométricos diagonales limpios para la primera y última diapositiva.
- **Estructura Modular de Diapositivas**:
  - Portada con autores y filiación.
  - Objetivos generales y específicos.
  - Marco teórico en dos columnas (ecuaciones + diagrama conceptual).
  - Metodología y montaje experimental (fotos reales del laboratorio + esquema).
  - Resultados y ajustes lineales (gráficas comparativas lado a lado).
  - Análisis, discusión y discrepancias experimentales.
  - Conclusiones numeradas.
  - Bibliografía y referencias con formato estándar.
  - Diapositiva de agradecimientos / sesión de preguntas.
- **Organización de Figuras**: Directorio `figures/` preconfigurado con `\graphicspath{{figures/}{./}}`.

---

## Estructura de Archivos

```
presentation/
├── main.tex          # Documento fuente de la presentación
├── main.pdf          # Presentación compilada de ejemplo (14 diapositivas)
├── figures/          # Carpeta para figuras, esquemas y gráficas
│   ├── LAB 10 OP_Anillos Newton.png
│   ├── ajuste_transmision.png
│   ├── ajuste_reflexion.png
│   ├── Condiciones_interferencia.png
│   ├── formacion_anillos.png
│   ├── images-3.jpeg
│   ├── LAB 10 OP_Montaje.jpeg
│   └── arreglo_exp_met.jpeg
└── README.md         # Documentación de la plantilla
```

---

## Guía de Personalización

### 1. Cambiar los Colores o Activar Light Mode
En [`main.tex`](main.tex), puedes ajustar los colores según tu preferencia:
```latex
% Dark Mode (predeterminado)
\definecolor{darkbg}{RGB}{24, 26, 27}       % Fondo principal
\definecolor{darkerbg}{RGB}{15, 16, 17}     % Fondo secundario
\definecolor{neonblue}{RGB}{0, 195, 255}    % Acentos y títulos
\definecolor{lighttext}{RGB}{235, 235, 235} % Texto principal

% Para modo claro (Light Mode):
% \definecolor{darkbg}{RGB}{255, 255, 255}
% \definecolor{darkerbg}{RGB}{245, 245, 247}
% \definecolor{neonblue}{RGB}{0, 82, 155}
% \definecolor{lighttext}{RGB}{33, 37, 41}
```

### 2. Crear Diapositivas con Columnas
Para colocar texto y una figura lado a lado:
```latex
\begin{frame}{Título de la Diapositiva}
    \begin{columns}[c]
        \begin{column}{0.55\textwidth}
            \textbf{\textcolor{neonblue}{Subtítulo}}
            \begin{itemize}
                \item Punto importante 1
                \item Punto importante 2
            \end{itemize}
        \end{column}
        \begin{column}{0.42\textwidth}
            \centering
            \includegraphics[width=\linewidth,height=5.5cm,keepaspectratio]{mi_figura.png}
        \end{column}
    \end{columns}
\end{frame}
```

---

## Compilación

### Opción 1: Terminal / Makefile
Desde la raíz del repositorio:
```bash
make presentation
```
O directamente dentro de la carpeta `presentation/`:
```bash
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

### Opción 2: Overleaf
1. Comprime el contenido de la carpeta `presentation/` en un archivo `.zip`.
2. Súbelo a Overleaf como un nuevo proyecto.
3. Compila con el motor **pdfLaTeX**.

# Plantilla de Reporte / Artículo Científico (Dos Columnas)

Plantilla en LaTeX formateada a dos columnas tipo artículo científico (estilo *Physical Review* / IEEE / UDLAP) para reportes de laboratorio de física, química o ingeniería.

---

## Características Principales

- **Formato a Dos Columnas (`multicol`)**: Estilo compacto de publicación académica con control fino de cortes de columna.
- **Cabeceras y Pies Personalizados (`fancyhdr`)**: Incluye código del curso/materia, título breve del experimento, institución y número de página.
- **Resumen y Palabras Clave (`abstract` & *keywords*)**: Formato a página completa antes de la división en dos columnas.
- **Manejo Riguroso de Incertidumbres**: Estructuras matemáticas completas para propagación de errores mediante derivadas parciales y reporte estándar $(X \pm \delta X)$.
- **Tablas y Figuras**: Soporte para figuras dentro de columnas o flotantes de ancho completo.

---

## Estructura de Archivos

```
report/
├── main.tex          # Documento fuente principal del reporte
├── main.pdf          # Reporte compilado de ejemplo (4 páginas)
├── figures/          # Carpeta para figuras, diagramas y fotos
│   ├── Diagrama_Fresnel.png
│   ├── trayectoria.png
│   ├── PHOTO-2026-10-02-07-00-35.jpg
│   ├── IMG_5736.jpeg
│   └── IMG_5734.jpeg
└── README.md         # Documentación de la plantilla
```

---

## Compilación

### Opción 1: Terminal / Makefile
Desde la raíz del repositorio:
```bash
make report
```
O directamente dentro de la carpeta `report/`:
```bash
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

### Opción 2: Overleaf
1. Comprime el contenido de la carpeta `report/` en un archivo `.zip`.
2. Súbelo a Overleaf como un nuevo proyecto.
3. Compila con el motor **pdfLaTeX**.

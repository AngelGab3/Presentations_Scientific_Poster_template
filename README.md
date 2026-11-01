<div align="center">

[![English](https://img.shields.io/badge/Language-English-blue?style=for-the-badge)](README.md)
[![Español](https://img.shields.io/badge/Idioma-Español-orange?style=for-the-badge)](README.es.md)

**[English](README.md)** | **[Español](README.es.md)**

</div>

# Scientific Presentation, Poster and Paper LaTeX Templates

A comprehensive collection of professional, modular LaTeX templates for academic and scientific dissemination: widescreen conference presentations, large-format symposium posters, and two-column laboratory reports or journal articles.

Originally developed for experimental physics projects at Universidad de las Américas Puebla (UDLAP), and designed to be easily customized for any university, institution, or scientific discipline.

---

## Repository Structure

The repository is organized in a modular, independent architecture. Each template contains its own source file `main.tex`, an assets directory `figures/`, dedicated documentation, and a precompiled sample PDF ready for review:

```
Presentations_Scientific_Poster_template/
├── poster/               # Scientific Poster Template (A0 / Large Format)
│   ├── main.tex          # LaTeX source code
│   ├── a0header.ps       # PostScript header required by a0poster
│   ├── main.pdf          # Precompiled sample output
│   ├── figures/          # Logos, diagrams, and figures
│   └── README.md         # Dedicated poster guide
│
├── presentation/         # Scientific Presentation Template (Beamer 16:9 Widescreen)
│   ├── main.tex          # LaTeX source code
│   ├── main.pdf          # Precompiled sample output (14 slides)
│   ├── figures/          # Regression plots, setups, and schematics
│   └── README.md         # Dedicated presentation guide
│
├── report/               # Scientific Report / Article Template (Two-Column)
│   ├── main.tex          # LaTeX source code
│   ├── main.pdf          # Precompiled sample output (4 pages)
│   ├── figures/          # Experimental photographs and diagrams
│   └── README.md         # Dedicated report guide
│
├── .gitignore            # Excludes LaTeX compilation artifacts
├── Makefile              # Automation for building and cleaning
├── LICENSE               # MIT Open Source License
├── README.md             # English documentation
└── README.es.md          # Spanish documentation
```

---

## Included Templates

### 1. Scientific Poster (`poster/`)
- **Foundation**: `a0poster` class combined with `geometry`, `tcolorbox`, `tikz`, and `pgfplots`.
- **Dimensions**: Configured by default to **90 cm × 130 cm** (vertical), easily adjusted with a single line to **DIN A0** (84.1 cm × 118.9 cm) or **DIN A1**.
- **Layout**: 2-column structure with independent `card` environments, institutional banner for university logo, department, title, and authors list.
- **Native Vector Plots**: Vector graphs generated with `pgfplots` (data points, error bars, mean line, and uncertainty bands).
- **Fault-Tolerant Graphics**: Custom `\safegraphic` macro that warns visually if an image is missing without terminating compilation.
- *Sample included*: "Interference at Fresnel's Mirror: determination of the wavelength of an He-Ne laser".

### 2. Widescreen Presentation (`presentation/`)
- **Foundation**: `beamer` class with `[aspectratio=169]` (16:9 modern widescreen).
- **Style**: Modern Dark Mode with neon blue accents (`neonblue`), high contrast, and crisp typography for projectors and screens.
- **TikZ Title & Closing**: Geometric diagonal split slides for opening and closing frames.
- **Slide Layouts**:
  - Objectives and specific goals.
  - Two-column theoretical framework (equations and schematic diagram).
  - Methodology and experimental apparatus with laboratory photographs.
  - Results and linear regression analysis.
  - Discussion, analysis, and experimental discrepancies.
  - Numbered conclusions and bibliography.
- *Sample included*: "Newton's Rings: Thin-Film Interference".

### 3. Lab Report / Research Paper (`report/`)
- **Foundation**: `article` class with `multicol`, `geometry`, and `fancyhdr`.
- **Layout**: Two-column academic journal format (IEEE / *Physical Review* style).
- **Features**: Full-width abstract and keywords, numbered equations, formal error propagation $(X \pm \delta X)$, data tables, and standard bibliography.
- *Sample included*: "Fresnel's Mirror Experiment".

---

## How to Compile

### Option A: Using the Makefile (Recommended for macOS / Linux)
The repository includes a ready-to-use `Makefile`:

```bash
# Compile all templates (poster, presentation, and report):
make all

# Compile a specific template:
make poster          # Builds poster/main.pdf
make presentation    # Builds presentation/main.pdf
make report          # Builds report/main.pdf

# Clean build artifacts (.aux, .log, .toc, .nav, etc.):
make clean

# Display available commands:
make help
```

### Option B: Directly with pdfLaTeX
Navigate to the desired template folder and compile twice to resolve cross-references:

```bash
cd poster
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

### Option C: Overleaf
1. Compress the desired template folder (e.g., `poster/` or `presentation/`) into a `.zip` archive.
2. In [Overleaf](https://www.overleaf.com), select **New Project** > **Upload Project**.
3. Upload the `.zip` file and compile using the default **pdfLaTeX** compiler.

### Option D: Visual Studio Code
Install the **LaTeX Workshop** extension. Open any `main.tex` and press `Cmd+Option+B` (macOS) or `Ctrl+Alt+B` (Windows/Linux) to build.

---

## LaTeX Requirements

Any modern TeX distribution works out of the box (TeX Live 2021+, MacTeX, or MiKTeX). Key packages used:
- `a0poster`, `beamer`, `article`
- `tikz`, `pgfplots`, `tcolorbox`
- `geometry`, `graphicx`, `xcolor`, `booktabs`, `enumitem`, `microtype`, `multicol`, `fancyhdr`
- `babel` (configured for Spanish with math decimal support, easily switched to English)

---

## Authors and Credits

Templates developed and utilized in **Experimental Optics** coursework at the **Department of Actuarial Sciences, Physics, and Mathematics** of **Universidad de las Américas Puebla (UDLAP)** by:
- **Ángel Gabriel Munguía Velázquez** ([@AngelGab3](https://github.com/AngelGab3))
- **Alan Iván Ortega Contreras**
- **Luz Stefanía Pérez Huesca**

---

## License

This project is released under the **MIT License**. You are free to use, modify, and distribute these templates for your academic, conference, and research projects. See the [LICENSE](LICENSE) file for details.

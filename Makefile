# ==============================================================================
# Makefile para Plantillas Científicas en LaTeX
# ==============================================================================

LATEX_ENGINE = pdflatex
LATEX_FLAGS  = -interaction=nonstopmode -halt-on-error

.PHONY: all poster presentation report clean distclean help

help:
	@echo "=================================================================="
	@echo "  Plantillas Científicas (Presentación, Póster y Reporte)"
	@echo "=================================================================="
	@echo "Comandos disponibles:"
	@echo "  make all          - Compila póster, presentación y reporte"
	@echo "  make poster       - Compila el póster científico (A0 / Gran formato)"
	@echo "  make presentation - Compila la presentación (Beamer 16:9)"
	@echo "  make report       - Compila el reporte/artículo científico (2 col)"
	@echo "  make clean        - Elimina archivos auxiliares de compilación"
	@echo "  make distclean    - Elimina archivos auxiliares y PDFs generados"
	@echo "=================================================================="

all: poster presentation report
	@echo "==> Todas las plantillas han sido compiladas exitosamente."

poster:
	@echo "==> Compilando Póster Científico..."
	cd poster && $(LATEX_ENGINE) $(LATEX_FLAGS) main.tex
	cd poster && $(LATEX_ENGINE) $(LATEX_FLAGS) main.tex
	@echo "==> Póster generado: poster/main.pdf"

presentation:
	@echo "==> Compilando Presentación..."
	cd presentation && $(LATEX_ENGINE) $(LATEX_FLAGS) main.tex
	cd presentation && $(LATEX_ENGINE) $(LATEX_FLAGS) main.tex
	@echo "==> Presentación generada: presentation/main.pdf"

report:
	@echo "==> Compilando Reporte / Artículo..."
	cd report && $(LATEX_ENGINE) $(LATEX_FLAGS) main.tex
	cd report && $(LATEX_ENGINE) $(LATEX_FLAGS) main.tex
	@echo "==> Reporte generado: report/main.pdf"

clean:
	@echo "==> Limpiando archivos auxiliares de compilación..."
	find . -type f \( -name "*.aux" -o -name "*.log" -o -name "*.nav" \
	               -o -name "*.out" -o -name "*.snm" -o -name "*.toc" \
	               -o -name "*.vrb" -o -name "*.fls" -o -name "*.fdb_latexmk" \
	               -o -name "*.synctex.gz" -o -name "*.bcf" -o -name "*.run.xml" \) -delete
	@echo "==> Limpieza finalizada."

distclean: clean
	@echo "==> Eliminando PDFs generados..."
	rm -f poster/main.pdf presentation/main.pdf report/main.pdf
	@echo "==> Listo."

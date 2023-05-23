all: *.tex
	for i in *.tex; do \
		pdflatex -halt-on-error $$i | grep '^!.*' -A 1000 && exit 1 || true; \
		biber $${i%.*} | grep '^!.*' -A 1000 && exit 1 || true; \
		pdflatex -halt-on-error $$i | grep '^!.*' -A 1000 && exit 1 || true; \
		pdflatex -halt-on-error $$i | grep '^!.*' -A 1000 && exit 1 || true; \
	done

.PHONY: clean

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.xml

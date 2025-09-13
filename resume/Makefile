# Minimal Makefile for Sphinx documentation

# Activate .venv
# C:\Users\bsram\Documents\Development\.venv\Scripts\Activate.ps1
# sphinx-build.exe -b pdf . _build/pdf

SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build

.PHONY: help clean html pdf

help:
	@echo "Please use 'make <target>' where <target> is one of"
	@echo "  html    to make HTML files"
	@echo "  pdf     to make PDF files via rst2pdf"
	@echo "  clean   to clean build files"

html:
	$(SPHINXBUILD) -b html $(SOURCEDIR) $(BUILDDIR)/html

pdf:
	$(SPHINXBUILD) -b pdf $(SOURCEDIR) $(BUILDDIR)/pdf

clean:
	rm -rf $(BUILDDIR)/*

# Copyright (c) 2025 Brian Ramming. All rights reserved.

# -- Path setup --------------------------------------------------------------
import os
import sys
sys.path.insert(0, os.path.abspath('.'))

# -- Project information -----------------------------------------------------
project = 'Brian Ramming Resume'
copyright = '2025, Brian Ramming'
author = 'Brian Ramming'


# -- General configuration ---------------------------------------------------
extensions = ['rst2pdf.pdfbuilder']
templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']
master_doc = 'resume'

# -- Options for PDF output --------------------------------------------------
pdf_use_toc = False
pdf_use_coverpage = False
pdf_stylesheets = ['_styles/resume.style.yaml', 'rainbow_dash']

# -- Options for HTML output -------------------------------------------------
html_theme = 'alabaster'

# -- Options for LaTeX output ------------------------------------------------
latex_engine = 'xelatex'
latex_elements = {
    'papersize': 'letterpaper',
    'pointsize': '11pt',
    'preamble': r'''
        \usepackage{enumitem}
        \setlist[itemize]{noitemsep, topsep=0pt}
    ''',
}

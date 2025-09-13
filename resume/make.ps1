# Copyright (c) 2025 Brian Ramming. All rights reserved.

param(
    [string]$Target = "help"
)

$SPHINXBUILD = "sphinx-build"
$SOURCEDIR = "."
$BUILDDIR = "_build"

function Show-Help {
    Write-Host "Please use '.\make.ps1 -Target <target>' where <target> is one of"
    Write-Host "  html    to make HTML files"
    Write-Host "  pdf     to make PDF files via rst2pdf"
    Write-Host "  clean   to clean build files"
}

function Build-HTML {
    Activate-Venv
    & $SPHINXBUILD -b html $SOURCEDIR "$BUILDDIR/html"
}

function Build-PDF {
    Activate-Venv
    & $SPHINXBUILD -b pdf $SOURCEDIR "$BUILDDIR/pdf"
}

function Clean-Build {
    Remove-Item -Recurse -Force "$BUILDDIR\*" -ErrorAction SilentlyContinue
}

function Activate-Venv {
    $venvPath = Join-Path $PSScriptRoot "..\..\.venv\Scripts\Activate.ps1"
    if (Test-Path $venvPath) {
        . $venvPath
    } else {
        Write-Host "Virtual environment not found. Please set up the virtual environment first."
        exit 1
    }
}

switch ($Target) {
    "help" { Show-Help }
    "html" { Build-HTML }
    "pdf" { Build-PDF }
    "clean" { Clean-Build }
    default { Show-Help }
}

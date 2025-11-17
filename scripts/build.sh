#!/usr/bin/env bash
set -e

# Activar el env (si ya estás dentro, no hace falta)
#conda activate jbook-r

# Construir libro
jupyter-book build

# Desplegar el libro
#cp _build/* static
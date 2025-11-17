# Requisitos Previos
Antes de poder compilar o ejecutar el libro, es necesario preparar el entorno de trabajo. Estos pasos instalan una distribución mínima de Conda y crean el entorno específico donde se encuentran todas las dependencias necesarias.

1. Instalar Conda
Descarga e instala Miniforge (una distribución ligera de Conda):
   ```bash
   curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
   ```
2. Requisitos previos
Antes de poder compilar o ejecutar el libro, es necesario preparar el entorno de trabajo. Estos pasos instalan una distribución mínima de Conda y crean el entorno específico donde se encuentran todas las dependencias necesarias.
   ```bash
   conda env create -f environment.yml
   conda activate jbook-r
   ```

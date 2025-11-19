# Primeros pasos
En este documento se detallan las instrucciones para ejecutar el pipeline.

# Ejemplo de pipeline – Snakemake
- Ejecutar el flujo completo con: `snakemake --cores 4`
- Para generar únicamente los resultados finales: `snakemake all`
- Para limpiar resultados intermedios: `snakemake clean`
- Para probar reglas individuales: `snakemake qc` o `snakemake taxonomy`

# Parámetros configurables
- Número de hilos (`threads`) para cada regla  
- Rutas de entrada en `config.yaml` (directorios `fastq/`, `db/`, `ref/`)  
- Selección de base de datos para taxonomía (miniDB, fullDB, etc.)  

# Archivos de demostración
- FASTQ de ejemplo en `data/demo/`  
- Archivo `config.yaml` preconfigurado  
- Snakemake `Snakefile` con reglas mínimas para pruebas

# Ejemplos de salida
- Reporte de QC (HTML) generado en `results/qc/`  
- Alineamientos SAM/BAM almacenados en `results/alignment/`  
- Tabla de taxonomía (`taxonomy.tsv`) en `results/taxonomy/`  
- Figuras en `results/figures/`

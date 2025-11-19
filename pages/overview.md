# Overview

Este archivo contiene la descripción del flujo completo del proyecto:

# Diagrama del pipeline  
QC → alignment → taxonomy → visualization

# Explicación de cada paso

## QC  
El módulo de control de calidad evalúa la integridad de los archivos FASTQ.  
Incluye verificación de calidad por base, detección de adaptadores y revisión de longitudes.  
Las herramientas típicas incluyen FastQC y un filtrado ligero previo al alineamiento.

## Alignment  
En este paso las lecturas se alinean contra la referencia o base de datos seleccionada.  
Dependiendo del objetivo, se emplean alineadores como Bowtie2, BWA o métodos pseudoalineados.  
El resultado principal son archivos SAM/BAM que describen la ubicación de cada lectura.

## Taxonomy  
A partir de los alineamientos o lecturas sin procesar, el módulo taxonómico asigna cada secuencia a un organismo.  
Kraken2, Bracken u otras herramientas basadas en k-mers suelen emplearse aquí.  
El resultado es una tabla de abundancias o identificaciones taxonómicas.

## Visualization  
Los resultados se transforman en gráficas y reportes.  
MultiQC, R, Python o notebooks permiten resumir el flujo en figuras accesibles y comparables.  
El objetivo es generar una interpretación clara de la calidad, composición y estructura de la muestra.

# Inputs y outputs de cada módulo

**QC**  
*Input:* FASTQ bruto.  
*Output:* Reportes de calidad, FASTQ filtrado (opcional).

**Alignment**  
*Input:* FASTQ limpio y referencia

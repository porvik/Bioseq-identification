# Resolución de Problemas
En este archivo se documentan errores comunes y soluciones mínimas para orientarse.

## Fallos con FastQC
FastQC a veces se queja de “Per base sequence quality” aunque las lecturas estén perfectamente vivas.
Esto suele pasar con simulaciones o con librerías muy cortas.
Un repaso rápido: confirmar que el archivo está realmente en formato FASTQ y que no viene comprimido dos veces por accidente.

## Problemas de RAM con Kraken2
Kraken2 puede pedir más memoria de la que parece humana.
Si revienta el nodo, suele ser por usar bases de datos completas.
Solución ligera: usar bases de datos mini o desactivar --preload para que lea en streaming.

## Errores de ruta en Snakemake
Snakemake protesta cuando una ruta es relativa y el directorio de trabajo no es el que piensas.
Un vistazo a snakemake --directory o usar rutas absolutas suele deshacer el nudo.

## Permisos o conflictos de dependencias
Si un script no arranca y no es culpa del código, probablemente es un permiso o una dependencia final que intentó colarse.
Prueba a recrear el entorno desde cero o revisar quién es dueño de la carpeta results/.

## Archivos FASTQ corruptos o incompletos
Cuando un análisis termina demasiado rápido o produce cero lecturas, el FASTQ puede estar truncado.
Un simple gzip -t o zcat | head revela si el archivo respira o no.

## Índices perdidos en Bowtie2 o BWA
Si Bowtie2 grita “could not open index”, normalmente el índice está en un sitio y tú en otro.
Verifica que incluye todos los archivos .bt2 o .bwt.

## Problemas de versión con Python
Scripts viejos a veces fallan solo por una diferencia sutil entre Python 3.8 y 3.11.
Chequeo exprés: confirmar la versión activa de Conda y quién está primero en el PATH.

## Conflictos con canales de Conda
Cuando Conda entra en bucle resolviendo dependencias, el origen suele ser mezclar bioconda, conda-forge y defaults sin orden.
Mantener el orden recomendado (conda-forge → bioconda → defaults) reduce el caos.
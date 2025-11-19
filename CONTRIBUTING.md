# Contributing Guidelines

¡Gracias por tu interés en contribuir a este proyecto!\
Este documento describe las normas y buenas prácticas para colaborar.

------------------------------------------------------------------------

## Estructura del repositorio

Por favor mantén la siguiente organización:

    .
    ├── data/
    │   ├── raw/           # Datos originales (no subir a GitHub)
    │   ├── reference/     # Genomas, anotaciones e índices
    │   ├── processed/     # Archivos generados por el pipeline
    │   └── test/          # Datos pequeños para pruebas
    ├── scripts/
    │   ├── qc/            # Control de calidad
    │   ├── alignment/     # Scripts de alineamiento
    │   ├── postprocessing/# Sort, index, mark-duplicates...
    │   └── utils/         # Funciones auxiliares
    ├── results/
    │   ├── qc/
    │   ├── alignment/
    │   └── figures/
    ├── config/
    ├── env/
    └── README.md

------------------------------------------------------------------------

## Buenas prácticas para contribuir

### 1. Usa ramas para cualquier cambio

Crea una rama nueva para cada funcionalidad o corrección:

    git checkout -b feature/nueva-funcion

### 2. Commits claros y descriptivos

Usa mensajes de commit breves y explicativos:

    Añade script de alineamiento con STAR
    Corrige rutas en el pipeline de QC
    Actualiza documentación de test data

### 3. Mantén la reproducibilidad

-   No subas datos grandes ni archivos derivados.
-   Asegúrate de que `environment.yml` y `requirements.txt` estén
    actualizados.
-   Documenta cualquier parámetro nuevo en `config/params.yaml`.

### 4. Datos de prueba

Si agregas funcionalidad nueva que afecta al alineamiento: - Incluye
datos mínimos en `data/test/` - Si es posible, añade archivos
`expected/` para validar la salida.

------------------------------------------------------------------------

## Cómo ejecutar las pruebas

Incluye datos de ejemplo en `data/test/`.\
Para ejecutar pruebas básicas del pipeline:

    bash scripts/alignment/run_test.sh

------------------------------------------------------------------------

## Pull Requests

Antes de crear un **Pull Request**, verifica:

-   [ ] El código corre sin errores\
-   [ ] No se subieron datos grandes\
-   [ ] La documentación fue actualizada\
-   [ ] Se agregaron pruebas si aplica

En el PR, describe claramente: - Qué cambiaste\
- Por qué\
- Cómo probarlo

------------------------------------------------------------------------

## Código de conducta

Por favor mantén un ambiente respetuoso y colaborativo.\
Trabajamos bajo un código de conducta simple:\
**comunicación clara, respeto y apoyo entre colaboradores.**

------------------------------------------------------------------------

¡Gracias por contribuir a este proyecto! 🚀

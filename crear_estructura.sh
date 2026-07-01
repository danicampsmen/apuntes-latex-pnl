#!/bin/bash

# Nombre del directorio raíz
BASE="Apuntes-Programacion-No-Lineal"

echo "Creando estructura de directorios..."

# Crear directorios con mkdir -p (crea padres si no existen)
mkdir -p "$BASE/img"
mkdir -p "$BASE/chapters/part1_optimalidad/chapter1_intro_optimizacion"
mkdir -p "$BASE/chapters/part1_optimalidad/chapter2_restricciones_igualdad"
mkdir -p "$BASE/chapters/part1_optimalidad/chapter3_analisis_convexo"
mkdir -p "$BASE/chapters/part1_optimalidad/chapter4_restricciones_mixtas"
mkdir -p "$BASE/chapters/part1_optimalidad/chapter5_teoria_dualidad"
mkdir -p "$BASE/chapters/part2_metodos/chapter6_intro_metodos"
mkdir -p "$BASE/chapters/part2_metodos/chapter7_opt_no_restringida"
mkdir -p "$BASE/chapters/part2_metodos/chapter8_opt_restringida"

echo "Creando archivos vacíos..."

# Archivos raíz
touch "$BASE/Apuntes-Programacion-No-Lineal.tex"
touch "$BASE/Apuntes-Programacion-No-Lineal.bib"
touch "$BASE/apuntes-scr.cls"

# Función auxiliar para crear archivos rápidamente
crear_archivos() {
  local dir=$1
  shift
  for file in "$@"; do
    touch "$BASE/$dir/$file"
    echo "% --- Archivo: $file ---" > "$BASE/$dir/$file"
  done
}

# Capítulo 1
crear_archivos "chapters/part1_optimalidad/chapter1_intro_optimizacion" "01_conceptos_basicos.tex" "02_existencia_soluciones.tex" "03_condiciones_irrestrictos.tex" "04_cono_tangente_primal.tex" "exercises.tex"

# Capítulo 2
crear_archivos "chapters/part1_optimalidad/chapter2_restricciones_igualdad" "01_subespacio_tangente.tex" "02_primer_orden_lagrange.tex" "03_segundo_orden.tex" "exercises.tex"

# Capítulo 3
crear_archivos "chapters/part1_optimalidad/chapter3_analisis_convexo" "01_conjuntos_funciones_convexas.tex" "02_teoremas_separacion.tex" "exercises.tex"

# Capítulo 4
crear_archivos "chapters/part1_optimalidad/chapter4_restricciones_mixtas" "01_cono_tangente_mixto.tex" "02_kkt.tex" "03_segundo_orden_mixto.tex" "exercises.tex"

# Capítulo 5
crear_archivos "chapters/part1_optimalidad/chapter5_teoria_dualidad" "01_programacion_lineal.tex" "02_dualidad_general_wolfe.tex" "exercises.tex"

# Capítulo 6
crear_archivos "chapters/part2_metodos/chapter6_intro_metodos" "01_clasificacion_convergencia.tex" "02_tasas_parada.tex" "03_opt_unidimensional.tex" "exercises.tex"

# Capítulo 7
crear_archivos "chapters/part2_metodos/chapter7_opt_no_restringida" "01_metodos_descenso_armijo.tex" "02_metodo_gradiente.tex" "03_metodo_newton.tex" "04_cuasi_newton.tex" "05_globalizacion_lineal.tex" "06_regiones_confianza.tex" "07_direcciones_conjugadas.tex" "08_metodos_sin_derivadas.tex" "exercises.tex"

# Capítulo 8
crear_archivos "chapters/part2_metodos/chapter8_opt_restringida" "01_gradiente_proyectado.tex" "02_direcciones_factibles.tex" "03_penalizacion_externa.tex" "04_penalizacion_interna_barreras.tex" "05_lagrangianas_aumentadas.tex" "06_sqp.tex" "exercises.tex"

echo "¡Estructura creada exitosamente en la carpeta '$BASE'!"

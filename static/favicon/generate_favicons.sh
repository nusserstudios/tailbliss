#!/bin/bash

# Script para generar los iconos a partir de nuestro .svg
# Es importante tener instalado la herramienta Inkscape
# Instalar en Ubuntu: sudo apt-get install inkscape


# Determina el directorio donde se encuentra el script
script_dir="$(dirname "$(realpath "$0")")"

# Define el archivo SVG original con una ruta relativa
input_file="$script_dir/favicon.svg"

# Verifica si el archivo SVG existe
if [ ! -f "$input_file" ]; then
  echo "El archivo SVG no se encuentra en $input_file"
  exit 1
fi

# Define el directorio de salida relativo
output_dir="$script_dir"

# Convierte a PNG con diferentes resoluciones
inkscape "$input_file" --export-filename="$output_dir/android-chrome-192x192.png" --export-width=192 --export-height=192
inkscape "$input_file" --export-filename="$output_dir/android-chrome-256x256.png" --export-width=256 --export-height=256
inkscape "$input_file" --export-filename="$output_dir/favicon-32x32.png" --export-width=32 --export-height=32
inkscape "$input_file" --export-filename="$output_dir/favicon-16x16.png" --export-width=16 --export-height=16
inkscape "$input_file" --export-filename="$output_dir/mstile-150x150.png" --export-width=150 --export-height=150

# Convierte a ICO (usando ImageMagick para la conversión a ICO)
inkscape "$input_file" --export-filename="$output_dir/favicon.png" --export-width=256 --export-height=256
convert "$output_dir/favicon.png" -define icon:auto-resize=64,48,32,16 "$output_dir/favicon.ico"

# Convierte a SVG para Safari Pinned Tab
inkscape "$input_file" --export-filename="$output_dir/safari-pinned-tab.svg" --export-width=256 --export-height=256

echo "Conversión completada."

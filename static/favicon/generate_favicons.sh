#!/bin/bash

# Script para generar los iconos a partir de nuestro .svg
# Es importante tener instalado la herramienta Inkscape y ImageMagick
# Instalar en Ubuntu: sudo apt-get install inkscape
#                     sudo apt install imagemagick

# Define el directorio donde se encuentra el script
script_dir="$(dirname "$(realpath "$0")")"

# Define el archivo SVG original con una ruta relativa
input_file="$script_dir/favicon.svg"

# Verifica si el archivo SVG existe
if [ ! -f "$input_file" ]; then
  echo "El archivo SVG no se encuentra en $input_file"
  exit 1
fi

# Define las resoluciones deseadas
declare -a res=(16 32)

# Genera imágenes PNG en las resoluciones especificadas
for r in "${res[@]}"; do
  inkscape "$input_file" --export-type=png --export-filename="$script_dir/favicon-${r}x${r}.png" --export-width=$r --export-height=$r --export-area-drawing
done

# Genera imágenes PNG para otros tamaños específicos
inkscape "$input_file" --export-type=png --export-filename="$script_dir/android-chrome-192x192.png" --export-width=192 --export-height=192 --export-area-drawing
inkscape "$input_file" --export-type=png --export-filename="$script_dir/mstile-150x150.png" --export-width=150 --export-height=150 --export-area-drawing
inkscape "$input_file" --export-type=png --export-filename="$script_dir/android-chrome-256x256.png" --export-width=256 --export-height=256 --export-area-drawing
inkscape "$input_file" --export-type=png --export-filename="$script_dir/apple-touch-icon.png" --export-width=180 --export-height=180 --export-area-drawing

inkscape "$input_file" --export-type=png --export-filename="$script_dir/favicon.png" --export-width=64 --export-height=64 --export-area-drawing


# Genera un favicon de tamaño 50x50 píxeles
inkscape "$input_file" --export-type=png --export-filename="$script_dir/favicon-50x50.png" --export-width=50 --export-height=50 --export-area-drawing

# Combina el PNG de 50x50 en un archivo ICO usando ImageMagick
convert "$script_dir/favicon-50x50.png" "$script_dir/favicon.ico"

# Elimina el archivo PNG de 50x50
rm -f "$script_dir/favicon-50x50.png"

# Copia el archivo SVG para Safari Pinned Tab
cp -f "$input_file" "$script_dir/safari-pinned-tab.svg"

# Mensaje de finalización
echo "Conversión completada."


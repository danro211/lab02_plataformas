#!/bin/bash

# Verificar si se paso un argumento al script
if [ $# -eq 0 ]; then
    echo "Uso: $0 <nombre-del-ejecutable>"
    exit 1
fi

# Guardar el nombre del ejecutable
ejecutable=$1

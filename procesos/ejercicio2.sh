#!/bin/bash

# Verificar que se pasaron dos argumentos al script
if [ $# -ne 2 ]; then
    echo "Uso: $0 <nombre_del_proceso> <comando_para_ejecutar>"
    exit 1
fi

# Guardar variables
nombre=$1
comando=$2

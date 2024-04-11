#!/bin/bash

# Verificar que se paso un argumento al script
if [ $# -ne 1 ]; then
    echo "Uso: $0 <PID>"
    exit 1
fi

# Guardar argumento como el PID
pid=$1

# Verificar si PID existe
# if negado, si NO se ejecuta el comando, pid existe
if ! ps -p $pid > /dev/null 2>&1; then
	# caso pid inexistente
	echo "PID no encontrado."
	exit 1

# caso pid existe, se despliega la informacion
else

echo "Aqui la info del PID"

fi



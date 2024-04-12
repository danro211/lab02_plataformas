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

	# Nombre del proceso
	nombre_proceso=$(ps -p $pid -o comm=)
	echo "El nombre del proceso es: $nombre_proceso"

	# ID del proceso
	echo "El ID del proceso es: $pid"

	# Parent process ID
	proceso_padre=$(ps -p $pid -o ppid=)
	echo "El ID del proceso padre es: $proceso_padre"

	# Usuario propietario
	propietario=$(ps -p $pid -o user=)
	echo "El usuario propietario del proceso es: $propietario"

	# Uso de CPU
	uso_cpu=$(ps -p $pid -o %cpu=)
	echo "El consumo de %CPU del proceso es: $uso_cpu%"

	# Consumo de memoria RAM
	uso_mem=$(ps -p $pid -o %mem=)
	echo "El consumo de memoria %RAM del proceso es: $uso_mem%"

	# Status
	status=$(ps -p $pid -o stat=)
	echo "El Status del proceso es: $status"

	# Path del ejecutable
	path_exe=$(ps -p $pid -o cmd=)
	echo "La ruta del ejecutable es: $path_exe"

fi



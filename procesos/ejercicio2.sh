#!/bin/bash

# Verificar que se pasaron dos argumentos al script
if [ $# -ne 2 ]; then
    echo "Uso: $0 <nombre_del_proceso> <comando_para_ejecutar>"
    exit 1
fi

# Guardar variables
nombre_proceso=$1
comando=$2

# Estructura while que periodicamente revisa proceso
# While se detendra hasta que sea explicitamente detenido
echo "Para detener el analisis del procceso puede terminar con Ctrl+C"
while true; do

    # Buscar el proceso por su nombre
	pid=$(pgrep -f "$nombre_proceso")


	# Verificar si el proceso existe
    if [[ -z $pid ]]; then

		# Si no se encuentra proceso
        echo "Proceso '$nombre_proceso' no encontrado, reiniciando..."
        # Volver a llamar al proceso
		$comando & # bg
        echo "Proceso reiniciado"

    else
		
		# Proceso corriendo
        echo "Proceso '$nombre_proceso' está corriendo con PID $pid"
    fi

    # Esperar 10seg antes de revisar nuevamente
    sleep 10
done


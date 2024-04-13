#!/bin/bash

# Verificar si se paso un argumento al script
if [ $# -eq 0 ]; then
    echo "Uso: $0 <directorio_por_monitorear>"
    exit 1
fi

# Archivo donde se registraran los cambios
LOG_FILE="monitor_log.txt"

# Directorio a monitorear pasado como argumento
MONITOR_DIR="$1"

# Comprobando si el directorio existe
if [ ! -d "$MONITOR_DIR" ]; then
    echo "Directorio: $MONITOR_DIR no encontrado."
    exit 1
fi

# Inicio de la monitorizacion
echo "Monitorizando cambios en el directorio $MONITOR_DIR..."
# Guardar en archivo log
echo "$(date '+%Y-%m-%d %H:%M:%S') - Iniciando monitorización de $MONITOR_DIR" > "$LOG_FILE"

# Uso de inotifywait en un bucle infinito
while true; do
    inotifywait -m -e create -e modify -e delete "$MONITOR_DIR" |
    while read path action file; do
        echo "$(date '+%Y-%m-%d %H:%M:%S') - El archivo '$file' en el directorio '$path' fue $action" >> "$LOG_FILE"
    done
done


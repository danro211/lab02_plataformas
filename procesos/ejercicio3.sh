#!/bin/bash

# Verificar si se pasó un argumento al script
if [ $# -eq 0 ]; then
    echo "Uso: $0 '<comando>'"
    exit 1
fi

# Ejecutar el comando pasado como parámetro
eval "$1" &
pid=$!

# Usar una etiqueta fija o una simplificación del comando
log_file="log_$(date +%Y%m%d_%H%M%S).txt"


# Escribir la cabecera del archivo de log
echo "Fecha_y_Hora CPU(%) Memoria(KB)" > $log_file

# Monitorear el consumo de CPU y memoria mientras el proceso está corriendo
while kill -0 $pid 2>/dev/null; do
    # Obtener la fecha y hora actual
    fecha=$(date "+%Y-%m-%d %H:%M:%S")
    
    # Obtener el uso de CPU y memoria usando ps
    stats=$(ps -p $pid -o %cpu,rss --no-headers)
    
    # Guardar los datos en el archivo de log
    echo "$fecha $stats" >> $log_file
    
    # Dormir por un segundo antes de tomar la próxima medición
    sleep 1
done

echo "Proceso finalizado. Datos guardados en $log_file."
echo "Generando gráfico..."

# Llamar a gnuplot para generar el gráfico
gnuplot -e "filename='${log_file}'" plot.gnuplot

echo "Gráfico generado."


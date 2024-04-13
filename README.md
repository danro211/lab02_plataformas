# Laboratorio #2: Procesos y Servicios en Linux

## Descripción General
Este repositorio contiene los resultados y scripts desarrollados para el Laboratorio #2 del curso, enfocado en la evaluación de conocimientos en manejo de procesos y servicios en sistemas operativos Linux. Este laboratorio permite aplicar habilidades esenciales para el manejo de procesos y la automatización de tareas mediante scripting en Bash.

## Estructura del Repositorio
El repositorio está organizado en dos directorios principales que corresponden a las dos partes del laboratorio:

### 1. `procesos`
Contiene scripts relacionados con la gestión y monitorización de procesos en Linux. Incluye:
- `ejercicio1.sh`: Script que muestra información detallada de un proceso dado su PID.
- `ejercicio2.sh`: Herramienta para monitorear y reiniciar automáticamente un proceso si se detiene.
- `ejercicio3.sh`: Script que monitoriza el consumo de CPU y memoria de un proceso y registra los datos en un log.
- `grafico.png`: Gráfico generado por `gnuplot` basado en los datos del log.
- `log_20240413_011645.txt`: Archivo de log con los datos de consumo de CPU y memoria.
- `plot.gnuplot`: Script de `gnuplot` usado para generar gráficos del consumo de recursos.

### 2. `servicios`
Incluye scripts y configuraciones para crear y gestionar un servicio de sistema que monitorea cambios en un directorio específico.
- `ejercicio4.sh`: Script que monitorea cambios en un directorio y registra eventos en un log.
- `monitor_log.txt`: Log generado por `ejercicio4.sh` con registros de cambios en el directorio.
- `por_monitorear`: Directorio objetivo para el monitoreo de cambios.

set terminal png size 800,600
set output 'grafico.png'
set title 'Consumo de CPU y Memoria'
set xlabel 'Tiempo'
set ylabel 'Porcentaje/Cantidad'
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%H:%M:%S"
set autoscale
set grid

plot filename using 1:2 title 'CPU (%)' with lines, \
     filename using 1:3 title 'Memoria (KB)' with lines


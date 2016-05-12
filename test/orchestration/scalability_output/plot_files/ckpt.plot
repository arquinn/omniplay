reset
fontsize = 20
set term postscript enhanced eps fontsize
set output "../output_graphs/output_ckpt.eps"
set style fill solid 1.00 border 0
#set style histogram errorbars gap 1 lw 1
#set style histogram gap 1
#set style data histogram
#set xtics rotate by -45 
#set xtics font "Times-Roman, 20" 
#set ytics font "Times-Roman, 18" 
set grid ytics
set xtics
set xlabel "Number of Cores" 
set ylabel "Normalized Speedup"offset 2
set xrange [1:128]
#set yrange [0:*]
#set yrange [0:45]
#set boxwidth 1
set key Left
set log

#set offset -.5, -.5, 0, 0


set datafile separator "," 
set style line  1 lc rgb "#1b9e77" lw 5 ps 2
set style line  2 lc rgb "#d95f02" lw 5 ps 2
set style line  3 lc rgb "#7570b3" lw 5 ps 2
set style line  4 lc rgb "#e7298a" lw 5 ps 2
set style line  5 lc rgb "#66a61e" lw 5 ps 2
set style line  6 lc rgb "#bb8f01" lw 5 ps 2
#set style line  6 lc rgb "#e6ab02" lw 5 ps 2
set style line  7 lc rgb "#a6761d" lw 5 ps 2


plot    "../norm_files/firefox.final.results.ckpt.norm.stats" title 'firefox' with linespoints ls 1 , \
        "../norm_files/gzip.final.results.ckpt.norm.stats" title 'gzip' with linespoints ls 2, \
	"../norm_files/openoffice.final.results.ckpt.norm.stats" title 'openoffice' with linespoints ls 3 , \
        "../norm_files/gs.final.results.ckpt.norm.stats" title 'gs' with linespoints ls 4, \
        "../norm_files/nginx.final.results.ckpt.norm.stats" title 'nginx' with linespoints ls 5, \
        "../norm_files/evince.final.results.ckpt.norm.stats" title 'evince' with linespoints ls 6, \
        "../norm_files/mongolonger.final.results.ckpt.norm.stats" title 'mongo' with linespoints ls 7, \
        "../norm_files/firefox.final.results.fq.norm.stats" using 1:1 title "linear scaling" with lines

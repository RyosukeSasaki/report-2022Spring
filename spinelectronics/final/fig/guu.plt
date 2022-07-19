reset
set terminal tikz size 10cm, 8cm
set output "guu.tex"
#set terminal wxt
set size square

set xlabel "$x=:k_Fr$"
set ylabel "$g_{\\sigma\\sigma'}$"

#set format x "$%.1t \times 10^{%T}$"
set xrange [0:6]
set yrange [0:1.05]

set ytics 0,1,1
set mytics 2
set xtics 0,1,6
set mxtics 1

guu(x) = 1-9*((sin(x)-x*cos(x))/x**3)**2
gud(x) = 1

set key right bottom
set key height 1
set key width -1
set key spacing 1.5

plot guu(x) title "$g_{\\upuparrows}$", gud(x) title "$g_{\\updownarrows}$"

set output
set terminal wxt
replot
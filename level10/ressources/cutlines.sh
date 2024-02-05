awk 'NR < 1 || NR > 115' dump.s > dumpclean.s
awk '/^ 80/ {print "\t\t" substr($0, 33)} !/^ 80/' dumpclean.s > temp && mv temp dumpclean.s

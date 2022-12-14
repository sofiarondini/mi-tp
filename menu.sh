#!/bin/bash

source 1statsWords.sh
source 2statsUsageWords.sh
source 3findNames.sh
source 4statsSentences.sh
source 5blankLinesCounter.sh

PATH_ARCHIVO=texto.txt

PS3='=> '
echo "Elija una opcion"
select opcion in "SALIR" "Estadisticas_de_palabras" "Estadisticas_de_uso_de_palabras" "Encontrar_nombres" "Estadisticas_de_oraciones" "Contador_de_lineas_en_blanco"
do
	[ -z $opcion ] && echo "Elija una opcion valida" && continue
	[ $REPLY == 1 ] && echo "Saliendo.." && break
	echo "Opcion elegida: " $opcion

	case $REPLY in
	  2) 1statsWords $PATH_ARCHIVO;;
	  3) 2statsUsageWords $PATH_ARCHIVO;;
	  4) 3findNames $PATH_ARCHIVO;;
	  5) 4statsSentences $PATH_ARCHIVO;;
	  6) 5blankLinesCounter $PATH_ARCHIVO;;
	esac
  
done

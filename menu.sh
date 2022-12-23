#!/bin/bash

PATH_ARCHIVO=texto.txt

PS3='=> '
echo "Elegì una opcion"
select opcion in "SALIR" "Ealabras" "uso_de_palabras" "nombres" "oraciones" "lineas_en_blanco"
do
	[ -z $opcion ] && echo "Elegì una opcion valida" && continue
	[ $REPLY == 1 ] && echo "Saliendo.." && break
	echo "Opcion elegida: " $opcion

	case $REPLY in
	  2) ./1statsWords.sh $PATH_ARCHIVO;;
	  3) ./2statsUsageWords.sh $PATH_ARCHIVO;;
	  4) ./3findNames.sh $PATH_ARCHIVO;;
	  5) ./4statsSentence.sh $PATH_ARCHIVO;;
	  6) ./5blankLinesCounter.sh $PATH_ARCHIVO;;
	esac
  
done

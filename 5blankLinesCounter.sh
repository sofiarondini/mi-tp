#!/bin/bash

  [ ! -f $1 ] && echo "Archivo inexistente, intente nuevamente" && exit 1


   total_lineas=$(cat $1 | wc -l)
   lineas_con_contenido=$(cat  $1 | grep . | wc -l)

   total_lineas_blanco=$((total_lineas-lineas_con_contenido))

   echo La cantidad de líneas en blanco es $total_lineas_blanco

#grep . matchea todas las líneas que contengan algún caracter

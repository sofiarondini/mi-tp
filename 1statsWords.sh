#!/bin/bash

palabra_corta=189919 #esta es la cantidad de letras que contiene la palabra más larga del mundo
palabra_larga=0
suma_acumulada=0
cant_palabras=0
long_palabra_temp=0
prom=0

for word in $(cat $1);
    do
          long_palabra_temp=${#word} #esta variable guarda la long de la plabra
          if [[ $long_palabra_temp -lt  $palabra_corta ]]
          then
              palabra_corta=$long_palabra_temp
          fi
          if [[ $long_palabra_temp -gt $palabra_larga ]]
          then
              palabra_larga=$long_palabra_temp
          fi
          suma_acumulada=$((suma_acumulada+long_palabra_temp))
          cant_palabras=$((cant_palabras+1))
done


prom=$((suma_acumulada/cant_palabras))
echo "El promedio de la longitud de las palabras es $prom"
echo "La longitud de la palabra mas larga es $palabra_larga"
echo "La longitud de la mas corta es $palabra_corta"


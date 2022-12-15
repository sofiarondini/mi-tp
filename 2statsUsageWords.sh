#!/bin/bash

[ ! -f $1 ] && echo "Archivo inexistente, intente nuevamente" && exit 1

#Si no es un archivo muestra el mensaje 

for palabra in $(cat $1)
do


  if [[ $(($(echo $palabra | wc -m)-1)) -ge 4 ]] #wc -m cuenta la cantidad de caracteres de la plabra
  then
    cont=0


    for word in $(cat $1)
    do
    if [[ $palabra = $word ]]
    then
      cont=$(($cont+1))
    fi
    done
    echo $cont $palabra >> temp.txt
   fi
done

#al salir del for tenemos el archivo temp con dos columnas, una con la cantidad de veces
#que aparece la palabra en el archivo y otra con la palabra
#lo vamos a ordenar de mayor a menor

 sort -g temp.txt > orden.txt #de menor a mayor según el nùmero
 cat orden.txt | uniq > ordenlisto.txt #eliminan las repetidas
 sort -r ordenlisto.txt > ordenalreves.txt #sort -r ordena al revés
 head ordenalreves.txt #head muestra las primeras 10 líneas 
 rm temp.txt #eliminamos el temporal para que al volver a ejecutarlo este limpio

#!/bin/bash

function 4statsSentences {
[ ! -f $1 ] && echo "Archivo inexistente, intente nuevamente" && exit 1

cant_letras=0
cant_oraciones=0
min_longitud=1000
max_longitud=0
suma_longitud=0

for palabra in $(cat $1)
do
    [[ ! $palabra =~ ['.']$ ]] && cant_letras=$(($(echo $palabra | wc -m)-1+cant_letras))

       if [[ $palabra =~ ['.']$ ]]
       then
             cant_letras=$(($(echo $palabra | wc -m)-2+cant_letras))
             [[ $cant_letras -lt $min_longitud ]] && min_longitud=$cant_letras
             [[ $cant_letras -gt $max_longitud ]] && max_longitud=$cant_letras
             cant_oraciones=$((cant_oraciones+1))
             suma_longitud=$((cant_letras+suma_longitud))
             cant_letras=0
        fi
   done

   echo La oración más corta tiene $min_longitud letras
   echo La oración más larga tiene $max_longitud letras
   echo El promedio de longitud de oraciones es $((suma_longitud/cant_oraciones))

}

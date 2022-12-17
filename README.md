# TP ENTORNO DE PROGRAMACIÒN
# Sofia Rondini

# Clonar el repositorio

Para clonar el repositorio utilizar el siguiente comando:

git clon https://github.com/sofiarondini/mi-tp.git


# Comandos Docker

Estos comando se utilizan luego de clonar el repositorio

    docker build -t sofiarondini:1.0 .
    
El comando build crea la imagen tp con el tag 1.0 . Luego ejecutar:

    docker images

Para ver que la imagen se creó correctamente. Para ejecutar el contenedor usar el comando run:

    docker run -it sofiarondini:1.0

Si todo se realizó de forma correcta, tendría que ejecutarse el script menu.sh

# Menu
A partir de un archivo de texto "texto.txt" este programa tiene distintas opciones:

    Salir:

Salir del menù

    1statsWords.sh:

Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).

    2statsUsageWords.sh:

Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.

    3findNames.sh:

Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana.

    4statsSentences.sh:
Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).

    5blankLinesCounter.sh:

Contador de líneas en blanco


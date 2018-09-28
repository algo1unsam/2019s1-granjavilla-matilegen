# Granjavilla

### Intro
Héctor es un granjero que se gana la vida cultivando maíz, trigo y tomaco. 
Para ello tiene que sembrar, regar y cosechar sus cultivos.
Al cosecharlas obtiene ganancias en monedas de oro.
Héctor es muy ahorrativo y todo el oro que obtiene por sus cosechas lo acumula.

Nuestro objetivo es construir un juego en el que podamos controlar a héctor, 
utilizando el teclado para moverlo alrededor del tablero. 

Contamos con imágenes en la carpeta assets para ilustrar el juego.

TIP: En los nombres de las imágenes, recordar que "corn" es maíz y "wheat" es trigo en inglés.

### Sembrar
Además de moverse, Héctor debe poder realizar las siguientes acciones:
- Al apretar la M siembra una semilla de maíz en su posición actual.
- Al apretar la T siembra una semilla de trigo en su posición actual.
- Al apretar la O siembra una semilla de tomaco en su posición actual.

Al sembrar una planta, la planta nace en estado "bebé".
Podemos usar las imágenes con nombres terminados en "_baby" para mostrarlas.

Atención: para no complicar la implementación del juego, 
lo mejor es permitir que haya más de una planta en la misma posición.

### Regar
Una vez sembrado un cultivo, para que crezca debe ser regado. 
Cuando presionamos la R, Héctor debe regar la planta que se encuentre en su misma posición.
Si no hay una planta, podemos tirar una excepción.

Al sembrar, la planta pasa a su estado "adulto". 
Para mostrarlas podemos usar las imágenes terminadas en "_adult".

TIP: Buscar la docentación de Wollok game en http://www.wollok.org/documentacion/wollokdoc/ 
para saber cómo obtener los objetos que están en la misma posición que Héctor.
Ojo que al hacer eso, entre los objetos que encuentren va a estar el propio Héctor.

## Cosecha
Las plantas adultas se pueden cosechar.
Cuando presionamos la C, se espera que Héctor coseche la planta que se encuentra en su misma posición.

Al hacerlo, obtiene el oro por la venta de la planta.
Al cosechar maíz obtiene 150 monedas de oro,
al cosechar trigo 100 monedas
y al cosechar tomaco 50 monedas.

Héctor debe acumular el oro y recordar cuánto oro obtuvo.
Al presionar la barra espaciadora, queremos que Héctor nos diga cuánto oro juntó en total.

## Posibles errores de Héctor.
Para poder obtener oro es necesario seguir la secuencia de sembrar-regar-cosechar.
En caso contrario, no vamos a obtener nada, es decir:
- Si regamos una planta adulta, esta no puede volver a crecer y se muere.
- Si intentamos cosechar una planta bebé, no es posible y también se muere la planta.

Para mostrar nuestras plantas muertas podemos usar la imagen "dead_plant.png".
Luego de cosechar una planta adulta, también la planta queda "muerta" 
y la mostramos con la misma imagen (la única diferencia es que en este caso sí obtuvimos oro a cambio).

Otro error posible es tratar de regar o cosechar en donde no hay plantas, 
en ese caso el juego debe indicar el problema al usuario.

TIP: Si al presionar una tecla, se manda un mensaje a héctor que lance una excepción,
Wollok Game automáticamente va a hacer que Héctor le diga eso al usuario.

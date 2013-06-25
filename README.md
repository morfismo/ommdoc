ommdoc
======


**ommdoc.cls** es un archivo de clase LaTeX para estandarizar el formato de los documentos de la Olimpiada de Matemáticas en Yucatán.

Instalación 
------

**Versión breve:**

Coloca los archivos  `ommdoc.cls`  y `blue.png` en el mismo directorio que el documento `.tex` que deseas compilar.

Es muy probable que inicialmente, no tengas todos los paquetes LaTeX que se requieren. 
En Windows, en esta situación, MiKTeX te solicitará permiso para instalarlo automáticamente.  
Tomará varios minutos (durante los cuales la compilación parecerá haberse detenido) pero cuando se intente compilar
las demás veces, será mucho más rápido.

Para más detalles sobre la instalación de la clase y paquetes auxiliares, [consultar el documento correspondiente](https://github.com/proposicion47/ommdoc/blob/master/instalacion.md)

Uso 
------

Para hacer uso de esta clase, se debe iniciar el archivo `.tex` con la siguiente declaración:
  \documentclass[onecolumn]{ommdoc}
  
Si se omite `[onecolumn]`  o si se indica explícitamente `[twocolumn]` el resultado será un documento a doble columna.



Opciones
------

Existen diferentes parámetros que se pueden indicar al cargar la clase para controlar diferentes aspectos del documento.


> * **onecolumn**, **twocolumn**
> Especifica si el documento se presentará con una o dos columnas. En caso de omisión, se usarán dos columnas.


> *  **sinfondo**
> Desactiva la imagen de fondo. 

> *  **fondo=**
> Establece la imagen de fondo. En caso de no indicarse, se usa `fondo=blue` correspondiente a la imagen `blue.png`.
> Los valores válidos son: 
> **blue** para material de entrenamiento
> **green** para exámenes.
> En caso de querer compilar con la opción `fondo=green` es necesario que 
> el archivo  `green.png` [(descarga)](https://github.com/proposicion47/ommdoc) se encuentre en el directorio del documento.  

> * **fondooscuro**
> Normalmente la imagen de fondo se muestra completa en la primera página (donde está el título) 
> y a partir de la segunda página se aplica una transparencia para reducir su color. 
> Esto facilita la lectura eliminando distractores. 
> La opción **fondooscuro** desactiva la transparencia y hace que en todas las hojas la imagen de fondo
> aparezca a todo color. Esta opción es deseable, por ejemplo, al compilar exámenes 
> (puesto que cada hoja es un día separado y tiene su propio título).


### Ejemplos:

Para compilar un examen, se declararía el documento como:

    \documentclass[fondo=green,onecolumn,fondooscuro,12pt]{ommdoc}

Puesto que los exámenes usan la imagen de fondo verde, no usan doble columna y cada hoja tiene su propio título.

Por otro lado, para compilar material de entrenamiento se usaría:

    \documentclass[12pt]{ommdoc}
  
Al no indicarse `fondo=` se selecciona el fondo azul de forma automática, 
aplicando transparencia a partir de la segunda hoja.
Al omitir `onecolumn` se prepara el material a doble columna.



Comandos definidos 
-------

* **Entornos de teorema**

La clase define los entornos **definicion**, **teorema** y **teorema*** (teorema sin numeración)

    \begin{teorema}[Wilson] 
    El número $p$ es primo si y sólo si $(p-1)!\equiv -1 \pmod{p}$.
    \end{teorema}
  

* **Comando `\problema`.**

Dada su frecuencia, se trata el caso de "problemas" de manera diferente para facilitar su uso. 

El comando `\problema` se usa para insertar numeración de problemas de forma automática.

    \problema ¿Cuántos cuadrados se forman en una cuadrícula de $n\times n$?

    \problema ¿Cuántos rectángulos se forman en una cuadrícula de $n\times n$?
    
    \problema El ángulo interior de un polígono regular es una cantidad entera de grados. ¿Cuántos lados puede tener?
    
Resulta en:

> **Problema 1.** ¿Cuántos cuadrados se forman en una cuadrícula de _n×n_?

> **Problema 2.** ¿Cuántos rectángulos se forman en una cuadrícula de _n×n_?

> **Problema 3.** El ángulo interior de un polígono regular es una cantidad entera de grados. ¿Cuántos lados puede tener?


_Pero, pero, pero, ¡¡yo indico directamente el número de problema en el texto!!_

Sí, pero el uso de este comando te permite reordenar los problemas o copiar 
problemas entre archivos sin tener que estar renumerando los problemas para que queden en el orden correcto.

Imagina que tienes ya un archivo con 30 problemas y quieres añadir un problema al inicio. 

¡No tienes que corregir manualmente la numeración de 30 problemas!


Codificación del texto
------

Observa que en los ejemplos anteriores no fue necesario usar comandos para las letras acentuadas 
(por ejemplo, no es necesario escribir `rect\'angulo` sino que se usó directamente `rectángulo`.

Esto se debe a que la clase asume que la codificación del texto en el editor es Unicode (UTF-8).
Cualquier editor moderno que se precie de serlo permite el uso de esta codificación. 

En caso de que aparezcan símbolos raros al compilar, eso quiere decir que la codificación es ISO8859-1 (latin1).

El uso de editores obsoletos hace llorar al niño Jesús, por favor no hagas llorar al niño Jesús e instala
un editor preparado para el uso moderno de LaTeX. [(hint!)](http://www.texniccenter.org/resources/downloads/29)


Tipografía 
------

La tipografía base de la clase es _Adobe Utopia_. 

Esto se logra mediante la carga interna del paquete `fourier`  ( (CTAN) )[http://www.ctan.org/pkg/fourier] 
que añade además varias mejoras tipográficas descritas en la 
(documentación del paquete)[http://tezcatl.fciencias.unam.mx/tex-archive/fonts/fourier-GUT/doc/latex/fourier/fourier-doc-en.pdf].

En el futuro se añadirá una opción que controle la tipografía base (utopia/palatino/charter/computer modern) 
pero dicha funcionalidad aún no está disponible.


(instala el paquete `fourier` en caso de que no la tengas disponible).


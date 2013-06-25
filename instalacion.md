# ommdoc.cls

**ommdoc.cls** es un archivo de clase LaTeX para estandarizar el formato de los documentos de la Olimpiada de Matemáticas en Yucatán.

## Instalación

**Coloca el archivo `ommdoc.cls` y el archivo `blue.png` en el mismo directorio que el archivo .tex que se desea compilar.**

**Nota 1:** es posible omitir el archivo blue.png si se indica explícitamente la opción `sinfondo` descrita más adelante. 

**Nota 2:** La clase está diseñada para funcionar con `pdflatex` y una versión relativamente reciente de LaTeX. En particular, probablemente no funcione con `latex` puro (es decir, compilando en DVI).

### Dependencias
Adicionalmente, la clase `ommdoc` depende de varias clases y paquetes LaTeX auxiliares, la mayoría estándar. 

_En caso de no tener instalado algún paquete necesario, seguir las instrucciones de la siguiente sección para hacerlo._

**Clase base**

* [memoir](http://www.ctan.org/tex-archive/macros/latex/contrib/memoir/).  Paquete linux: `texlive-recommended`.



## Instrucciones para instalar paquetes adicionales

###En Windows
La opción más recomendada en Windows es la instalación mediante el administrador de paquetes de MiKTeX
![](http://i.imgur.com/ImMkAwP.png)
 
Se indica el nombre del paquete deeseado y luego se presiona _Filtrar_ para localizarlo. Una vez seleccionado, se hace clic en el botón [+]  para descargar e instalar.
![](http://i.imgur.com/JNaHYf5.png)
  
###En Linux
En Linux se puede usar `apt` para instalar el paquete deseado. Por ejemplo, para instalar `memoir`, la clase de la que se deriva ommdoc, usamos el comando:

**apt-get install texlive-recommended**

![](http://i.imgur.com/ymNhPvM.png)

o, para instalar las fuentes de letras, usamos 

**apt-get install texlive-fonts-extra**

Sin embargo, aunque las anteriores son la forma más simple y conveniente, tienen la desventaja que instalan muchos paquetes adicionales (útiles pero no necesarios para esta clase).

En caso de se desee, se puede hacer uso de la tercera opción (disponible en todos los sistemas).

###Instalación manual
La tercera opción consiste en descargar los paquetes directamente de CTAN (el servidor que almacena todos los paquetes LaTeX) y proceder a una instalación manual.

Por ejemplo, para instalar **memoir** visitamos 
[la página en CTAN de memoir](http://www.ctan.org/tex-archive/macros/latex/contrib/memoir/) y descargamos los archivos `memoir.ins` y `memoir.dtx`.

A continuación compilamos ambos archivos:

    $ pdflatex memoir.ins
    $ pdflatex memoir.dtx
    
el primer comando compilará el paquete en el directorio actual (que será aquél donde querramos crear el documento) mientras que el segundo comando es opcional y crea el archivo de documentación.
    

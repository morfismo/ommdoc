# ommdoc.cls

**ommdoc.cls** es un archivo de clase LaTeX para estandarizar el formato de los documentos de la Olimpiada de Matemáticas en Yucatán.

------

## Instalación

**Coloca el archivo `ommdoc.cls` y el archivo `blue.png` en el mismo directorio que el archivo .tex que se desea compilar.**

**Nota 1:** es posible omitir el archivo blue.png si se indica explícitamente la opción `sinfondo` descrita más adelante. 

**Nota 2:** La clase está diseñada para funcionar con `pdflatex` y una versión relativamente reciente de LaTeX. En particular, probablemente no funcione con `latex` puro (es decir, compilando en DVI).

### Dependencias
Adicionalmente, la clase `ommdoc` depende de varias clases y paquetes LaTeX auxiliares, la mayoría estándar.


>  **Instrucciones para instalar paquetes**
> 
>  La opción más recomendada en Windows es la instalación mediante el administrador de paquetes de MiKTeX
>  ![](http://i.imgur.com/ImMkAwP.png)
>  
> Se indica el nombre del paquete deeseado y luego se presiona _Filtrar_ para localizarlo. Una vez seleccionado, se hace clic en el botón [+]  para descargar e instalar.
>  ![](http://i.imgur.com/JNaHYf5.png)
>  
> En linux se puede usar `apt` para instalar el paquete deseado. Por ejemplo, para instalar `memoir`, la clase de la que se deriva ommdoc, usamos el comando
> **apt-get install texlive-recommended **
>  ![](http://i.imgur.com/ymNhPvM.png)

## Uso
y declara la clase del documento como

    \documentclass{ommdoc}
    

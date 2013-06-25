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
> Los valores son: 
> **blue** para material de entrenamiento
> **green** para exámenes.
> En caso de querer compilar con la opción `fondo=green` es necesario que 
> el archivo  `green.png` [(descarga)](https://github.com/proposicion47/ommdoc) se encuentre en el directorio del documento.  


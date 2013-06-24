# ommdoc.cls
======

**ommdoc.cls** es un archivo de clase LaTeX para estandarizar el formato de los documentos de la Olimpiada de Matemáticas en Yucatán.


------
## Instalación

**Coloca el archivo `ommdoc.cls` y el archivo `blue.png` en el mismo directorio que el archivo .tex que se desea compilar.**

**Nota 1:** es posible omitir el archivo blue.png si se indica explícitamente la opción `sinfondo` descrita más adelante. 

**Nota 2:** La clase está diseñada para funcionar con `pdflatex` y una versión relativamente reciente de LaTeX. En particular, probablemente no funcione con `latex` puro (es decir, compilando en DVI).

### Dependencias
**ommdoc** depende adicionalmente de varias clases y paquetes LaTeX, aunque la mayoría son estándar, otros no.

En Windows, con MiKTeX es posible instalar los paquetes faltantes de forma automática. En caso contrario (por ejemplo en Linux) pueden ser instalados mediante el administrador de paquetes o, en última instancia, copiando los archivos de paquete enlazados en el mismo directorio que ommdoc.cls.


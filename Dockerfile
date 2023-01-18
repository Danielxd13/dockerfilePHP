#partiendo de una imagen de php
from php:latest
#creamos directorio
run mkdir -r /home/PHPFILE
#ir al directorio ejercicio
workdir /home/PHPFILE
#copiar proyecto php en el directorio del contenedor 
copy ~/dockerfilephp/documento.php .
#ejecutamos el proyecto
cmd ["php", "./documento.php"] 

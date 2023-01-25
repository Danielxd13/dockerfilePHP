#partiendo de una imagen de php
from php:latest
#copiar proyecto php en la carpeta de servicios html
COPY documento.php /var/www/html/
#ejecutamos el proyecto -S modo silencio -t directorio q se ejecutara el php
CMD ["php", "-S ","0.0.0.0:0000", "-t", "/var/www/html/"] 

#partiendo de una imagen de php
from php:7.4-cli
#copiar proyecto php en la carpeta de servicios html
ADD documento.php /var/www/html/index.php
#ejecutamos el proyecto -S modo silencio -t directorio q se ejecutara el php
CMD ["php", "/var/www/html/index.php"] 

# don't change this line
FROM korney4eg/nginx-php:latest

RUN apt update && apt upgrade

COPY app.conf /etc/nginx/sites-enabled/app.conf
RUN chmod +x /etc/nginx/sites-enabled/app.conf

COPY --chown=www-data index.php /var/www/html/index.php
RUN chmod +x /var/www/html/index.php

# don't change this line
CMD ["/usr/bin/supervisord"]

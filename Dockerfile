# don't change this line
FROM korney4eg/nginx-php:latest

#RUN apt update && apt upgrade

# +execute
COPY app.conf /etc/nginx/conf.d/app.conf
RUN chmod +x /etc/nginx/conf.d/app.conf
# +execute
COPY --chown=www-data index.php /var/www/html/index.php
RUN chmod +x /var/www/html/index.php

# don't change this line
CMD ["/usr/bin/supervisord"]

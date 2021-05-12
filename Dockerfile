# don't change this line
FROM korney4eg/nginx-php:latest

#RUN apt update && apt upgrade

COPY app.conf /etc/nginx/sites-enabled/app.conf
RUN chmod +x /etc/nginx/sites-enabled/app.conf

# Uncomment to store index.php inside image
COPY --chown=www-data index.php /var/www/html/index.php
RUN chmod +x /var/www/html/index.php

# Uncomment to mount index.php
# docker run --rm -v "${PWD}"/index.php:/var/www/html/index.php -p 8080:80 myapp:latest
#RUN mkdir /var/www/html/

EXPOSE 80

# don't change this line
CMD ["/usr/bin/supervisord"]

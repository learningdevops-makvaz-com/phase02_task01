# don't change this line
FROM korney4eg/nginx-php:latest

# your code goes here
# Make nginx use app.conf configuration to properly render php files
COPY /app.conf /etc/nginx/sites-enabled/app.conf
# Make sure that index.php file is available in browser
COPY /index.php /var/www/html/index.php
# expose needed ports
EXPOSE 80
#Test environment variable on website
ENV VERSION=1
# don't change this line
CMD ["/usr/bin/supervisord"]

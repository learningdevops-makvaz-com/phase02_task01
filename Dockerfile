# don't change this line
FROM korney4eg/nginx-php:latest

# your code goes here
# Make nginx use app.conf configuration to properly render php files
# Make sure that index.php file is available in browser
# expose needed ports

COPY index.php /var/www/html/
COPY app.conf /etc/nginx/sites-enabled/app.conf
# don't change this line
CMD ["/usr/bin/supervisord"]
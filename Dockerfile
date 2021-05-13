# don't change this line
FROM korney4eg/nginx-php:latest
# your code goes here

# Make nginx use app.conf configuration to properly render php files
COPY ./app.conf /etc/nginx/conf.d/
# Make sure that index.php file is available in browser
VOLUME [ "/var/www/app" ]
# expose needed ports
EXPOSE 80
# don't change this line
CMD ["/usr/bin/supervisord"]



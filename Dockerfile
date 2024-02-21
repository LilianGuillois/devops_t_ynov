# Use the official Apache image as the base image
FROM httpd:latest

# Copy custom configuration file to the container
COPY ./html /usr/local/apache2/htdocs/

# Expose port 80 to the outside world
EXPOSE 80

# Start the Apache server
CMD ["httpd", "-D", "FOREGROUND"]

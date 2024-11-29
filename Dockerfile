# Use the official Apache HTTPD base image
FROM httpd:2.4

# Add maintainer information
LABEL maintainer="your_email@example.com"

# Copy custom configuration or HTML files to the container
# Optional: Add your own HTML files to /usr/local/apache2/htdocs/
COPY ./index.html /usr/local/apache2/htdocs/

# Expose the HTTP port
EXPOSE 80

# Start Apache server
CMD ["httpd-foreground"]

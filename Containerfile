# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the HTML file to the appropriate location in the Nginx container
COPY index.html /usr/share/nginx/html/index.html

# Create log directory and set permissions for Nginx
RUN mkdir -p /var/log/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chmod 755 /var/log/nginx

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

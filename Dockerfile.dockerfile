# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the HTML and CSS files to the Nginx default directory
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
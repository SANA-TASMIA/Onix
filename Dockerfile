# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the static content into the container
COPY ./assets /usr/share/nginx/html/assets
COPY ./vendor /usr/share/nginx/html/vendor

# Copy the index.html file
COPY ./index.html /usr/share/nginx/html/index.html

# Copy the prepros.config file if needed
# COPY ./prepros.config /usr/share/nginx/html/prepros.config

# Expose port 80 to be able to access the website
EXPOSE 80

# Command to run Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]

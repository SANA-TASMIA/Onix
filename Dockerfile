# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the content of the current directory to /usr/share/nginx/html
COPY . /usr/share/nginx/html

# Expose port 80 to be able to access the website
EXPOSE 80

# Command to run Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]

# Use official nginx image as the base image
FROM nginx:latest

# Copy the custom nginx configuration
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Copy all files and folders from dist/web-app to /usr/share/nginx/html
COPY ./dist/web-app /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80
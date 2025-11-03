# Use official Nginx image
FROM nginx:alpine

# Set maintainer label
LABEL maintainer="your-email@example.com"

# Copy custom HTML file
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
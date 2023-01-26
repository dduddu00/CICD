FROM nginx:latest
ADD index.html /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

FROM nginx:latest
ADD index.html /usr/share/nginx/html
RUN mkdir -p /usr/share/nginx/html/css
ADD style.css /usr/share/nginx/html/css/style.css
ADD boxicons.css /usr/share/nginx/html/css/boxicons.css
ADD hero-img.png /usr/share/nginx/html/css/hero-img.png
WORKDIR /usr/share/nginx/html

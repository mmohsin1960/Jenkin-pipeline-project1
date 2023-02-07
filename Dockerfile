FROM  nginx:latest
MAINTAINER muhammad.mohsin@eurustechnologies.com
RUN apt-get update && apt-get install -y nginx \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/global.zip /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN unzip global.zip
RUN cp -r html/* /usr/share/nginx/html
RUN rm -rf html global.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

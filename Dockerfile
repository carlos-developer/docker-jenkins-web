FROM ubuntu
MAINTAINER Apasoft Training "juansuarezmarin@gmail.com"
RUN apt-get update
RUN apt-get install -y nginx
ADD web /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80

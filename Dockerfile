FROM ubuntu
MAINTAINER nesta (fulto@live.fr)
RUN apt update -y
RUN DEBIAN_FRONTEND=noninteractive apt install nginx git -y 
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/cloudacademy/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

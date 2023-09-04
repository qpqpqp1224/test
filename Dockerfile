FROM ubuntu:14.04
MAINTAINER Foo Bar <foo@bar.com>
 
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

WORKDIR /etc/nginx
COPY . /usr/share/nginx/html
 
CMD ["nginx"]
 
EXPOSE 80
EXPOSE 443

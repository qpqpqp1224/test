FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nginx
RUN echo "Helloooo"

WORKDIR /etc/nginx

CMD ["nginx", -"g", "daemon off;"]

EXPOSE 80

FROM ubuntu:14.04
 
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "Hello Workld -PEH"

WORKDIR /etc/nginx
 
CMD ["nginx", "-g", "daemon off;"]
 
EXPOSE 8080
EXPOSE 80
EXPOSE 443

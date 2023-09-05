FROM nginx
 
#RUN apt-get update
#RUN apt-get install -y nginx
#RUN echo "Hello Workld -PEH"

COPY index.html /usr/share/nginx/html/

#WORKDIR /etc/nginx
 
CMD ["nginx", "-g", "daemon off;"]
 
EXPOSE 8080
EXPOSE 80
#EXPOSE 443


#Correr con una imagen de nginx alpine que son más ligeras


FROM nginx:alpine


#Copiar el archivo default.conf a la carpeta de configuración del nginx


COPY default.conf /etc/nginx/conf.d/default.conf


#Copiar el archivo index a la carpeta por defecto de despliegue del server nginx


COPY index.html /usr/share/nginx/html/index.html


#Correr y no parar ni recibir peticiones


CMD ["nginx", "-g", "daemon off;"]


# web-docker


Localizaremos nuestro terminal en la carpeta de nuestro ejemplo y correremos este primer comando:

```bash
docker build --rm -f "Dockerfile" -t hello:v1 .
```

En esta instrucción le decimos a nuestro -f indicando el nombre del archivo en este y casi todos los casos Dockerfile, --rm que remueva contenedores intermedios una vez terminada la ejecución, -t nombre y tag de la aplicación en nuestro caso nombre hello y tag v1 y un punto final que indica el directorio.

Vemos como comienza a crear nuestra imagen y a seguir los pasos que 
indicamos en nuestro archivo docker. 

Primera imagen de docker creada! para verla solo corremos el comando:

```bash
docker image ls
ó
docker images
ó
docker image list

```

Ahora vamos a ver esta en ejecución, para esto ahora ejecutaremos el siguiente comando:

```bash
docker run --rm -d -p 8081:80/tcp hello:v1
```

Esto nos generara un hash de compilación, ahora vamos a nuestro navegador y escribimos: localhost:8081

![Captura](https://user-images.githubusercontent.com/50055674/162176072-7a69c0fd-b9a8-4d89-94a2-5080d5bbcb6f.png)


Ahí esta nuestra primer aplicación corriendo con Docker, y ahora, ¿como la detengo?

 Vamos a correr dos instrucciones más:

```bash
docker container ls
ó
docker ps
```

Este comando nos mostrara nuestros contenedores desplegados, su ID, el nombre de la imagen que está corriendo, hace cuánto se creó y su forwarding de salida. 

Copiamos su ID y corremos este segundo comando:

```bash
docker container stop [container ID]
```

Y listo has detenido este contenedor y ya no se esta ejecutando, así de fácil es desplegar un ambiente solo con lo que necesitamos y ver nuestra aplicación corriendo en él.

He utilizado la web: https://devopsfacilito.blogspot.com/2019/02/1-empezando-con-docker-devops-series.html , para seguir los pasos y aprender.

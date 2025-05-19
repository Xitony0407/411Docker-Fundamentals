
# Contenedor: Entorno AISLADO, donde existen todas las dependencias para ejecutar una aplicación.
# ¿Qué es una imagen? Una serie de instrucciones que se ejecutan para levantar un contenedor.

# Imagen --> Clase
# Contenedor --> Objeto Persona ()
# Las imagenes viven en un repositorio de Imagenes (Container Registry). Docker hub
docker container run hello-world

# Listar los contenedores
docker container ls -a

# Crear contenedor que persista en el tiempo y que exponga un puerto
docker container run -d -p 8081:80 docker/getting-started

# Eliminar contenedor
docker container rm <ID del contenedor>

# Detener un contenedor
docker container stop <ID del contenedor> o <el nombre>

# Iniciar un contenedor que ya existe
docker container start <ID del contenedor> o <el nombre>

# Eliminar contenedor forzado 
docker container rm -fv <ID del contenedor>

# Corren un comando para mantenerse prendidos
container run --name MaquinaVirtualUbuntu -d ubuntu sleep 3600

# Como ingresar a un contenedor
docker container exec -it <ID o nombre del contenedor> <comando de inicio>

# NGINX???
docker container run -d -p 8088:80 nginx

#Como sonstruir una imagen???
docker build -t node-api:1.0 .

# Mysql
docker container run --name MySQL2 -e MYSQL_ROOT_PASSWORD=12345 -dp 3308:3306 mysql:8

# Logs
docker logs <ID o nombre del contenedor>

# Volumes Bind Volumes / Volumenes Administrados
docker volume ls

# Crear un volumen
docker volume create <nombre del volumen>

# Networks
docker network create <nombre de la network>

docker network connect <nombre de network> <nombre del contenedor>

#Login
docker login -u xitony0407 -p <password> 

#1. Se crea la aplicacion
# 2. Se crea el dockerfile
#3. Construir la imagen
docker build -t xitony0407/docker-fundamentals:v1 .
#4. Crear la imagen
docker push xitony0407/docker-fundamentals:v1
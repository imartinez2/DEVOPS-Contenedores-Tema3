#Detener el container de la aplicación
docker stop tema3lab1

#Eliminar el container de la aplicación
docker rm tema3lab1

#Eliminar la imagen de la aplicación
docker rmi tema3lab:v1.0

#Detener el container de la base de datos
docker stop mysqltodoapp

#Eliminar el container de la base de datos
docker rm mysqltodoapp

#Eliminar la imagen de la base de datos
docker rmi mysql:5.7

#Eliminar la red de la aplicación
docker network rm todo-app
#Creacióm de red para comunicación entre la aplicación y la base de datos
docker network create todo-app

#Iniciar un container con MYSQL con persistencia de los datos en un volumen
docker run -d --network todo-app --network-alias mysql -v todo-mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=superpass -e MYSQL_DATABASE=todos --name mysqltodoapp --restart=always mysql:5.7

#Crear imagen de la aplicación
docker build -t tema2lab:v1.0 .

#Iniciar un container con la aplicación
docker run -d -p 8081:3000 --name tema2lab1 --network todo-app -e MYSQL_HOST=mysql -e MYSQL_USER=root -e MYSQL_PASSWORD=superpass -e MYSQL_DB=todos --restart=always tema2lab:v1.0


#Listar los componentes desplegados
docker ps && docker network list && docker volume ls
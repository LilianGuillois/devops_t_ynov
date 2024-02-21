#TP DOCKER

3.
 a. pour recuperer l'image docker

 b. docker images pour voir si on a bien recuperer l'image docker

 c. command line pour run le docker avec l'image et le montage du chemin : docker run -v /home/docker/html:/usr/local/apache2/htdocs/ -p 8080:80 -d httd

 d. docker rm "ID du container ou nom" pour supprimer le container

 e. docker cp /home/docker/html/ "id container ou nom":/usr/local/apache2/htdocs/ pour copier le fichier 


4.
 Commande mis dans le Dockerfile :

	FROM httpd:latest

	COPY ./html /usr/local/apache2/htdocs/

	EXPOSE 80

	CMD ["httpd", "-D", "FOREGROUND"]

Avanatge : besoin de parametré que le port et le nom du container, éxécution
Inconvéniant : lire le dockerfile pour comprendre 

5.
 a. docker pull mysql et docker pull phpmyadmin

 b. docker run --name contener_phpmyadmin --link contener_mysql -p 8080:80 -d -e PMA_HOST=contener_mysql phpmyadmin/phpmyadmin

6.
 a.

 b. Pour lancer le docker compose : docker compose up -d

 c.version: '3.8'
 
services:
  db:
    image: mysql:latest
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: admin
      MYSQL_DATABASE: docker
      MYSQL_USER: root
      MYSQL_PASSWORD: admin
 
  phpmyadmin:
    image: phpmyadmin/phpmyadmin:latest
    restart: always
    ports:
      - "8080:80"
    environment:
      PMA_HOST: db
      MYSQL_ROOT_PASSWORD: root

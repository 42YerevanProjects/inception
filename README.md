# 42 Inception

This project consists in having you set up a small infrastructure composed of different
services under specific rules. The whole project has to be done in a virtual machine. You
have to use docker-compose.

> **Warning**: Don't copy/paste anything you don't understand: it's bad for you, and for the school.

## <img src="https://www.docker.com/sites/default/files/d8/2019-07/vertical-logo-monochromatic.png"  width="40px"> About the project

### Mandatory part

Each Docker image must have the same name as its corresponding service.
Each service has to run in a dedicated container:
  You then have to set up:
  - A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
  - A Docker container that contains WordPress + php-fpm (it must be installed and configured) only without nginx.
  - A Docker container that contains MariaDB only without nginx.
  - A volume that contains your WordPress database.
  - A second volume that contains your WordPress website files.
  - A docker-network that establishes the connection between your containers.
  - Your containers have to restart in case of a crash.

Here is an example diagram of the expected result:

<img width="562" alt="Screen Shot 2021-12-22 at 8 38 03 PM" src="https://user-images.githubusercontent.com/54292953/147146268-a616f39a-3f16-41f8-80c9-db5494c3dfe7.png">

### Bonus part

For this project, the bonus part is aimed to be simple.
A Dockerfile must be written for each extra service. Thus, each one of them will run
inside its own container and will have, if necessary, its dedicated volume.

Bonus list:
   - Set up redis cache for your WordPress website in order to properly manage the
cache.
   - Set up a FTP server container pointing to the volume of your WordPress website.
   - Create a simple static website in the language of your choice except PHP (Yes, PHP
is excluded!). For example, a showcase site or a site for presenting your resume.
   - Set up Adminer.
   - Set up a service of your choice that you think is useful. During the defense, you
will have to justify your choice.

## ⚙️ Start Containers

You can run:

  - `make` in the root of the directory to build and start all container

  - `make build` to build all images in docker-compose

  - `make up` to start all containers in docker-compose

  - `make down` to remove all containers in the docker-compose

  - `make start` to start all containers in the docker-compose

  - `make stop` to stop all containers in the docker-compose

  - `make status` to see the running containers

  - `make logs` to see the logs of the containers

  - `make rmi` **NOTE** This command will remove **ALL IMAGES CREATED BY DOCKER-COMPOSE**.

  - `make re` to remove, build and run all containers in docker-compose

## Resources

You can find some links and books below that might be useful during the project. You can find all the books in resources folder. 
Note that you do not have to read the books completly but you will find a lot of useful information there.

Books

- [Docker Basics](https://github.com/42YerevanProjects/42_Inception/tree/master/resources)
- [Docker in Practice](https://github.com/42YerevanProjects/42_Inception/tree/master/resources)

Videos

- [Docker Tutorial](https://youtu.be/fqMOX6JJhGo)
- [NGINX Linux Server](https://youtu.be/MP3Wm9dtHSQ)
- [NGINX Config file](https://youtu.be/NEf3CFjN0Dg)
- [Deploying Application with docker-compose](https://youtu.be/vJAfq6Ku4cI)
- [MariaDB Basics](https://youtu.be/qxPnGlIxYC8)
- [Redis Crush Course](https://youtu.be/jgpVdJB2sKQ)
- [FTP explained](https://youtu.be/L9aZpg0ip70)
- [Portainer](https://youtu.be/8q9k1qzXRk4)

Links

- [WordPress Deployment with NGINX, PHP-FPM and MariaDB using Docker Compose](https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a)
- [Compose file version 3 reference](https://docs.docker.com/compose/compose-file/compose-file-v3/)
- [php-fpm Configuration](https://www.php.net/manual/en/install.fpm.configuration.php)
- [Installing redis](https://unixcop.com/install-redis-server-debian-11/)
- [How to use adminer](https://kinsta.com/blog/adminer/)
- [Redis Eviction](https://redis.io/docs/manual/eviction/)
- [Openssl](https://www.ssldragon.com/blog/what-is-openssl-and-how-it-works/#:~:text=With%20OpenSSL%2C%20you%20can%20apply,do%20all%20kind%20of%20verifications.)
- [FastCGI](https://www.techtarget.com/whatis/definition/FastCGI)
- [TLS](https://www.internetsociety.org/deploy360/tls/basics/)

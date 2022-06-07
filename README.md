# 42 Inception

This project consists in having you set up a small infrastructure composed of different
services under specific rules. The whole project has to be done in a virtual machine. You
have to use docker-compose.

<img src="https://www.docker.com/sites/default/files/d8/2019-07/vertical-logo-monochromatic.png"  width="40px"> 
## About the project

#### Mandatory part

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

#### Bonus part

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


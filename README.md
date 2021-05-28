# WordPress with 500mb upload
[![CodeFactor](https://www.codefactor.io/repository/github/iamapinan/basic-wordpress/badge)](https://www.codefactor.io/repository/github/iamapinan/basic-wordpress)

Repository for Basic WordPress training. This version of WordPress we increase upload file size to 500mb.   
The image hosted at https://hub.docker.com/r/iamapinan/wordpress    

### Prequisite.
- Install docker from https://www.docker.com/get-started for container running.
- Install https://code.visualstudio.com/download for development tools.

### Packages.
- **MariaDB** docker image for database system.
- **WordPress** docker image for CMS platform.
- **Redis** docker image for database cache.

### Running.
Start service by run command `docker compose up -d` service will running on http://localhost:8080.   
you can open it with web browser.

### Simple run with docker
- Pull image from `iamapinan/wordpress:latest`.  
- Start it by `docker run -d --name 'website' -p 80:80 iamapinan/wordpress:latest`

### Run with docker compose file.  
- Create file `docker-compose.yml` and add code below to the file.

```
version: '3'

services:
  app:
    image: iamapinan/wordpress:latest
    volumes:
      - ./app:/var/www/html
    ports:
      - 8080:80
    links:
      - db

  db:
    image: mariadb
    ports:
      - 3306
    environment:
      MYSQL_DATABASE: web_db
      MYSQL_ROOT_PASSWORD: securepassword123
```
- Start container by run command `docker compose up -d`
- See process is running by `docker ps`
- Website is running on http://localhost:8080

### Configuration for WordPress.
See more document from https://hub.docker.com/_/wordpress

### Instructor.  
Apinan Woratrakun (Nu)
contact: iamapinan@gmail.com

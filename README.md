### Supported tags and respective Dockerfile links
* **2.1.0.2**
* **2.1.0.2.qs** 
* **2.3.0.2** 
* **2.3.0.2.qs**
* **3.0.2.0**  
* **3.0.2.0.qs**  

See dockerfiles: [https://github.com/bved/docker-opencart](https://github.com/bved/docker-opencart)

---  

### What is this image?
[![Docker Stars](https://img.shields.io/docker/stars/bved/opencart.svg)](https://hub.docker.com/r/bved/opencart/)
[![Docker Pulls](https://img.shields.io/docker/pulls/bved/opencart.svg?style=round-square")](https://hub.docker.com/r/bved/opencart/)
[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/bved/opencart/latest.svg)](https://hub.docker.com/r/bved/opencart/)
[![Docker Build Status](https://img.shields.io/docker/build/bved/opencart.svg)](https://hub.docker.com/r/bved/opencart/)
[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/bved/opencart/) 
 
The fast deployment of opencart. Doesn't require configuration and installations. Ready to use.  
  
The basic version is designed for self-installation.  
  
The version of "qs" (Quick Start) does not require a stand-alone installation. All parameters are already set up. Added Russian language.  
  
Read more about opencart: [https://www.opencart.com/](https://www.opencart.com/)

This image is not intended for productive use! The main purpose is for demo, testing, and development tasks. Therefore a pre-configured shop with pre-defined options yielding fast startup times is used.

### Usage "Origin" version
##### Create a docker-compose.yml
This is the recommended way to run OpenCart. Create a **docker-compose.yml** with the following  contents:

```
version: '2'

services:

  web:
    image: bved/php-apache:5.6
    depends_on:
      - opencart
      - mysql
    volumes:
      - www:/var/www/html
    ports:
        - "80:80"

  opencart:
    image: bved/opencart:<version>
    volumes:
          - www:/www
    tty: true
          
  mysql:
    image: mysql:5.7
    environment:
      MYSQL_DATABASE: opencart
      MYSQL_ROOT_PASSWORD: opencart

volumes:
  www:
  
```
##### Run
Then run **docker-compose up** and in the browser navigate to [http://127.0.0.1/](http://127.0.0.1/) and start the installation.   

---  

### Usage "Quick Start" version
##### Create a docker-compose.yml
This is the recommended way to run OpenCart. Create a **docker-compose.yml** with the following  contents:  

```
version: '2'

services:

  web:
    image: bved/php-apache:5.6
    depends_on:
      - opencart
      - mysql
    volumes:
      - www:/var/www/html
    ports:
        - "80:80"

  opencart:
    image: bved/opencart:<version>.qs
    volumes:
          - www:/www
          - mysql:/mysql
    tty: true
          
  mysql:
    image: mysql:5.7
    volumes:
      - mysql:/docker-entrypoint-initdb.d
    environment:
      MYSQL_ROOT_PASSWORD: opencart

volumes:
  www:
  mysql:
  
```
##### Run
Then run **docker-compose up** and in the browser navigate to:

* [http://127.0.0.1/](http://127.0.0.1/) - to frontend
* [http://127.0.0.1/admin](http://127.0.0.1/admin) - to backend  

##### Access to the admin panel
Login: admin  
Password: admin

##### Changing default "config.php" in OpenCart
To change the default "config.php", use the environment variables:  
* OC_CONFIG_WWW_PATH  
* OC_CONFIG_HOSTNAME   
* OC_CONFIG_USERNAME  
* OC_CONFIG_PASSWORD  
* OC_CONFIG_DATABASE  
* OC_CONFIG_PORT  

---
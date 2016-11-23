# PostgreSQL with PostGIS on Raspberry Pi

### Image Info
This Image based on 
* https://hub.docker.com/r/tobi312/rpi-postgresql/
* https://github.com/TobiasH87Docker/rpi-postgresql
and
* https://hub.docker.com/r/mdillon/postgis/
* https://github.com/appropriate/docker-postgis

### How to use this image
* ``` docker pull tobi312/rpi-postgresql-postgis:9.4-2.1 ```
* Optional: ``` mkdir -p /home/pi/.local/share/postgresql ```
* ``` docker run --name postgis -d -p 5432:5432 -v /home/pi/.local/share/postgresql:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mysecretpassword tobi312/rpi-postgresql-postgis:9.4-2.1 ``` 

or build it yourself
* ``` git clone https://github.com/TobiasH87Docker/rpi-postgresql-postgis.git && cd rpi-postgresql/ ```
* ``` docker build -t tobi312/rpi-postgresql-postgis:9.4-2.1 ./9.4-2.1/ ``` 
* Optional: ``` mkdir -p /home/pi/.local/share/postgresql ```
* ``` docker run --name postgis -d -p 5432:5432 -v /home/pi/.local/share/postgresql:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mysecretpassword tobi312/rpi-postgresql-postgis:9.4-2.1 ``` 

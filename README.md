# PostgreSQL with PostGIS on Raspberry Pi / armhf

This image based on [*tobi312/rpi-postgresql*](https://hub.docker.com/r/tobi312/rpi-postgresql/) - which is a port of the official PostgreSQL image - and a port of the [*mdillon/postgis*](https://hub.docker.com/r/mdillon/postgis/) image.

### Supported tags and respective `Dockerfile` links
-	`9.6-2.3` *Coming soon*
-	[`9.4-2.1`, `latest` (*Dockerfile*)](https://github.com/TobiasH87Docker/rpi-postgresql-postgis/blob/master/9.4-2.1/Dockerfile)

### What is PostgreSQL and PostGIS?
PostgreSQL, often simply "Postgres", is an object-relational database management system (ORDBMS) with an emphasis on extensibility and standards-compliance.

PostGIS is an open source software program that adds support for geographic objects to the PostgreSQL object-relational database. PostGIS follows the Simple Features for SQL specification from the Open Geospatial Consortium (OGC).
> [wikipedia.org/wiki/PostgreSQL](https://en.wikipedia.org/wiki/PostgreSQL) and [postgresql.org](https://www.postgresql.org/)
> [wikipedia.org/wiki/PostGIS](https://en.wikipedia.org/wiki/PostGIS) and [postgis.net](http://postgis.net/)

![logo](https://raw.githubusercontent.com/docker-library/docs/master/postgres/logo.png)

### How to use this image
* ``` docker pull tobi312/rpi-postgresql-postgis:9.4-2.1 ```
* Optional: ``` mkdir -p /home/pi/.local/share/postgresql ```
* ``` docker run --name postgis -d -p 5432:5432 -v /home/pi/.local/share/postgresql:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mysecretpassword tobi312/rpi-postgresql-postgis:9.4-2.1 ``` 

or build it yourself
* ``` git clone https://github.com/TobiasH87Docker/rpi-postgresql-postgis.git && cd rpi-postgresql/ ```
* ``` docker build -t tobi312/rpi-postgresql-postgis:9.4-2.1 ./9.4-2.1/ ``` 
* Optional: ``` mkdir -p /home/pi/.local/share/postgresql ```
* ``` docker run --name postgis -d -p 5432:5432 -v /home/pi/.local/share/postgresql:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mysecretpassword tobi312/rpi-postgresql-postgis:9.4-2.1 ``` 

### Environment Variables
* `POSTGRES_PASSWORD`
* more see: https://hub.docker.com/r/tobi312/rpi-postgresql/

### This Image on
* [DockerHub](https://hub.docker.com/r/tobi312/rpi-postgresql-postgis/)
* [GitHub](https://github.com/TobiasH87Docker/rpi-postgresql-postgis)

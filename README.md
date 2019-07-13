# PostgreSQL with PostGIS on Raspberry Pi / ARM

This image based on [*tobi312/rpi-postgresql*](https://hub.docker.com/r/tobi312/rpi-postgresql/) - which is a port of the official PostgreSQL image - and a port of the [*mdillon/postgis*](https://hub.docker.com/r/mdillon/postgis/) image (,[source](https://github.com/appropriate/docker-postgis)).

### Supported tags and respective `Dockerfile` links
-	[`9.6-2.3`, `latest` (*Dockerfile*)](https://github.com/Tob1asDocker/rpi-postgresql-postgis/blob/master/stretch.armhf.9_6-2_3.Dockerfile)

### What is PostGIS?
PostGIS is an open source software program that adds support for geographic objects to the PostgreSQL object-relational database. PostGIS follows the Simple Features for SQL specification from the Open Geospatial Consortium (OGC).
> [wikipedia.org/wiki/PostGIS](https://en.wikipedia.org/wiki/PostGIS) and [postgis.net](http://postgis.net/)

PostgreSQL, often simply "Postgres", is an object-relational database management system (ORDBMS) with an emphasis on extensibility and standards-compliance.
> [wikipedia.org/wiki/PostgreSQL](https://en.wikipedia.org/wiki/PostgreSQL) and [postgresql.org](https://www.postgresql.org/)

![logo](https://raw.githubusercontent.com/docker-library/docs/master/postgres/logo.png)

### How to use this image
* ``` docker pull tobi312/rpi-postgresql-postgis:9.6-2.3 ```
* Optional: ``` mkdir -p /home/pi/.local/share/postgresql ```
* ``` docker run --name postgis -d -p 5432:5432 -v /home/pi/.local/share/postgresql:/var/lib/postgresql/data -e POSTGRES_PASSWORD=mysecretpassword tobi312/rpi-postgresql-postgis:9.6-2.3 ``` 

### Environment Variables
* `TZ` (Default: Europe/Berlin)
* `POSTGRES_PASSWORD`
* more see: [tobi312/rpi-postgresql](https://hub.docker.com/r/tobi312/rpi-postgresql/)

### This Image on
* [DockerHub](https://hub.docker.com/r/tobi312/rpi-postgresql-postgis/)
* [GitHub](https://github.com/Tob1asDocker/rpi-postgresql-postgis)

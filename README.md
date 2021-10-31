# PostgreSQL with PostGIS on Raspberry Pi / ARM

### Supported tags and respective `Dockerfile` links
-	[`13-3.1-alpine` (*Dockerfile*)](https://github.com/Tob1asDocker/rpi-postgresql-postgis/blob/master/alpine.armhf.13.Dockerfile) (on AlpineLinux 3.14)
-	[`9.6-3.1-alpine` (*Dockerfile*)](https://github.com/Tob1asDocker/rpi-postgresql-postgis/blob/master/alpine.armhf.9_6.Dockerfile) (on AlpineLinux 3.14) ([EOL](https://endoflife.date/postgresql))
-	[`9.6-2.3` (*Dockerfile*)](https://github.com/Tob1asDocker/rpi-postgresql-postgis/blob/master/debian.armhf.9_6.Dockerfile) (on Debian 9 Stretch) ([EOL](https://endoflife.date/debian))

### What is PostGIS?
PostGIS is an open source software program that adds support for geographic objects to the PostgreSQL object-relational database. PostGIS follows the Simple Features for SQL specification from the Open Geospatial Consortium (OGC).
> [wikipedia.org/wiki/PostGIS](https://en.wikipedia.org/wiki/PostGIS) and [postgis.net](http://postgis.net/)

PostgreSQL, often simply "Postgres", is an object-relational database management system (ORDBMS) with an emphasis on extensibility and standards-compliance.
> [wikipedia.org/wiki/PostgreSQL](https://en.wikipedia.org/wiki/PostgreSQL) and [postgresql.org](https://www.postgresql.org/)

![logo](https://raw.githubusercontent.com/docker-library/docs/master/postgres/logo.png)

### About these images:
* a port of the official [PostGIS](https://hub.docker.com/r/postgis/postgis)-Image, [Sourcecode](https://github.com/postgis/docker-postgis).
* based on official Images: [arm32v7/postgres](https://hub.docker.com/r/arm32v7/postgres).  
* build on Docker Hub with Autobuild, for example and more details see in this [repository](https://github.com/Tob1asDocker/dockerhubhooksexample).

### How to use these images:

* ``` $ docker run --name some-postgis -v $(pwd)/postgis:/var/lib/postgresql/data -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d tobi312/rpi-postgresql-postgis:13-3.1-alpine ```
* more see official [PostgreSQL](https://hub.docker.com/_/postgres)-Image and [PostGIS](https://hub.docker.com/r/postgis/postgis)-Image

#### Docker-Compose

```yaml
version: '2.4'
services:
  postgis:
    image: tobi312/rpi-postgresql-postgis:13-3.1-alpine
    #container_name: postgis
    volumes:
      - ./postgis:/var/lib/postgresql/data
      #- /etc/timezone:/etc/timezone:ro
      #- /etc/localtime:/etc/localtime:ro
    environment:
       POSTGRES_PASSWORD: mysecretpassword
       #POSTGRES_DB: user
       #POSTGRES_USER: user
    restart: unless-stopped
    ports:
      - 5432:5432
    healthcheck:
      test: ["CMD-SHELL", "pg_isready -U postgres"]
      interval: 60s
      timeout: 5s
      retries: 5
```

### This Image on
* [DockerHub](https://hub.docker.com/r/tobi312/rpi-postgresql-postgis/)
* [GitHub](https://github.com/Tob1asDocker/rpi-postgresql-postgis)

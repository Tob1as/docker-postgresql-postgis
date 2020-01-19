FROM arm32v7/postgres:9.6

LABEL org.opencontainers.image.authors="PostgreSQL Docker Community, Mike Dillon <mike@appropriate.io, Tobias Hargesheimer <docker@ison.ws>" \
	org.opencontainers.image.title="PostgreSQL+PostGIS" \
	org.opencontainers.image.description="Debian with PostgreSQL 9.6 and PostGIS on ARM arch" \
	org.opencontainers.image.licenses="MIT" \
	org.opencontainers.image.url="https://hub.docker.com/r/tobi312/rpi-postgresql-postgis" \
	org.opencontainers.image.source="https://github.com/Tob1asDocker/rpi-postgresql-postgis"

ENV POSTGIS_MAJOR 2.3
ENV POSTGIS_VERSION 2.3.*

RUN apt-get update \
      && apt-cache showpkg postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR \
      && apt-get install -y --no-install-recommends \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts=$POSTGIS_VERSION \
           postgis=$POSTGIS_VERSION \
           gdal-bin \
      && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/postgis.sh
COPY ./update-postgis.sh /usr/local/bin
RUN chmod +x /docker-entrypoint-initdb.d/postgis.sh && \
      chmod +x /usr/local/bin/update-postgis.sh

FROM tobi312/rpi-postgresql:9.4

LABEL org.opencontainers.image.authors="Docker * Authors, Mike D. <mike@appropriate.io>, Tobias Hargesheimer <docker@ison.ws>" \
	org.opencontainers.image.title="PostgreSQL+PostGIS" \
	org.opencontainers.image.description="Debian 8 Jessie with PostgreSQL 9.4 and PostGIS 2.1 on arm arch" \
	org.opencontainers.image.licenses="MIT" \
	org.opencontainers.image.url="https://hub.docker.com/r/tobi312/rpi-postgresql-postgis" \
	org.opencontainers.image.source="https://github.com/Tob1asDocker/rpi-postgresql-postgis"

ARG CROSS_BUILD_START=":"
ARG CROSS_BUILD_END=":"

RUN [ ${CROSS_BUILD_START} ]

ENV POSTGIS_MAJOR 2.1
ENV POSTGIS_VERSION 2.1.*

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION \
		postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts=$POSTGIS_VERSION \
		postgis=$POSTGIS_VERSION \
		gdal-bin \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/postgis.sh
RUN chmod +x /docker-entrypoint-initdb.d/postgis.sh
COPY ./update-postgis.sh /usr/local/bin
RUN chmod +x /usr/local/bin/update-postgis.sh

RUN [ ${CROSS_BUILD_END} ]
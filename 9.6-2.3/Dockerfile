FROM tobi312/rpi-postgresql:9.6

RUN [ "cross-build-start" ]

ENV POSTGIS_MAJOR 2.3
ENV POSTGIS_VERSION 2.3.*

RUN apt-get update \
      && apt-get install -y -t stretch --no-install-recommends \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts=$POSTGIS_VERSION \
           postgis=$POSTGIS_VERSION \
      && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/postgis.sh
RUN chmod +x /docker-entrypoint-initdb.d/postgis.sh
COPY ./update-postgis.sh /usr/local/bin
RUN chmod +x /usr/local/bin/update-postgis.sh

RUN [ "cross-build-end" ]

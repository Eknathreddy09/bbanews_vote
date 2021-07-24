FROM postgres:10.0
MAINTAINER massimo@it20.info

WORKDIR /
RUN chmod +x init-yelb-db.sh
COPY init-yelb-db.sh /docker-entrypoint-initdb.d/init-yelb-db.sh

ENV POSTGRES_PASSWORD=postgres_password



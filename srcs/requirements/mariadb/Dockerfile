FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt install mariadb-server -y

COPY --chmod=+x ./tools/mariadb_conf.sh ./mariadb_conf.sh

ENTRYPOINT ["./mariadb_conf.sh"]
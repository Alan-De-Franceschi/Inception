FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt install mariadb-server -y

COPY --chmod=+x ./mariadb_conf.sh ./mariadb_conf.sh

ENTRYPOINT ["./tools/mariadb_conf.sh)"]
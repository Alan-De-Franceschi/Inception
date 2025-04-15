FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt install mariadb-server -y

COPY --chmod=644 ../../../secrets/db_password.txt ./db_password.txt
    
COPY --chmod=644 ../../../secrets/db_root_password.txt ./db_root_password.txt

RUN export SQL_PASS=$(cat ~/db_password.txt)

RUN export SQL_ROOT_PASS=$(cat ~/db_root_password.txt)

RUN rm ./db_password.txt

RUN rm ./db_root_password.txt

COPY --chmod=+x ./mariadb_conf.sh ./mariadb_conf.sh

ENTRYPOINT ["./tools/mariadb_conf.sh)"]
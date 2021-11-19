FROM bfren/nginx-php:php8.0-3.0.2

ENV \
    # This should be your email address
    FIREFLY_OWNER_EMAIL= \
    # MySQL / MariaDB database host
    FIREFLY_DB_HOST= \
    # MySQL / MariaDB database port
    FIREFLY_DB_PORT= \
    # MySQL / MariaDB database user
    FIREFLY_DB_USER= \
    # MySQL / MariaDB database password
    FIREFLY_DB_PASS= \
    # MySQL / MariaDB database name
    FIREFLY_DB_NAME=

COPY ./overlay /
COPY ./FIREFLY_REVISION /tmp/FIREFLY_VERSION
COPY ./PHP_BUILD /tmp/PHP_VERSION

COPY ./overlay /

RUN bf-install

VOLUME [ "/storage" ]

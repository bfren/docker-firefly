FROM bfren/nginx-php:php8.0-2.2.17

ENV \
    # set to the application's external URL
    FIREFLY_URL= \
    # admin user's first name
    FIREFLY_ADMIN_FIRSTNAME= \
    # admin user's last name
    FIREFLY_ADMIN_LASTNAME= \
    # admin user's email address
    FIREFLY_ADMIN_EMAIL= \
    # admin user's password
    FIREFLY_ADMIN_PASS=

COPY ./overlay /
COPY ./FIREFLY_REVISION /tmp/FIREFLY_VERSION
COPY ./PHP_BUILD /tmp/PHP_VERSION

COPY ./overlay /

RUN bf-install

VOLUME [ "/data" ]

FROM alpine:3.7
LABEL maintainer="BVE Develop <bve.develop@gmail.com>"

ENV OC_VERSION 3.0.2.0
ENV OC_CONFIG_WWW_PATH /var/www/html
ENV OC_CONFIG_HOSTNAME mysql
ENV OC_CONFIG_USERNAME root
ENV OC_CONFIG_PASSWORD opencart
ENV OC_CONFIG_DATABASE opencart
ENV OC_CONFIG_PORT 3306

RUN apk add --no-cache --virtual .persistent-deps \
		ca-certificates \
		curl

RUN set -xe \
    && mkdir /www \
    && curl -o /tmp/oc_base.zip -L https://github.com/opencart/opencart/archive/${OC_VERSION}.zip \
    && unzip /tmp/oc_base.zip -d /tmp/ \
    && cd /tmp/opencart*/upload \
    && rm admin/config-dist.php \
    && cp -rf admin catalog image system index.php php.ini .htaccess.txt /www \
    && rm -rf /tmp/*

RUN set -xe \
    && curl -o /tmp/oc_rs.zip -L http://opencart-russia.ru/down.php?opencart${OC_VERSION} \
    && unzip /tmp/oc_rs.zip -d /tmp/ \
    && cd /tmp/upload* \
    && cp -rf admin/language/ru-ru /www/admin/language \
    && cp -rf catalog/language/ru-ru /www/catalog/language \
    && rm -rf /tmp/*

COPY init.sh /bin/init.sh
COPY dump.sql /mysql/

RUN set -xe \
    && touch /www/config.php /www/admin/config.php \
    && chmod -R 755 /www/image/cache \
    && chmod -R 755 /www/system/storage \
    && chmod +x /bin/init.sh

EXPOSE 80

CMD ["init.sh"]
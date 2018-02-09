FROM alpine:3.7
LABEL maintainer="BVE Develop <bve.develop@gmail.com>"

ENV OC_VERSION 2.1.0.2

RUN apk add --no-cache --virtual .persistent-deps \
		ca-certificates \
		curl

RUN set -xe \
    && mkdir /www \
    && curl -o /tmp/oc_base.zip -L https://github.com/opencart/opencart/archive/${OC_VERSION}.zip \
    && unzip /tmp/oc_base.zip -d /tmp/ \
    && cd /tmp/opencart*/upload \
    && rm admin/config-dist.php \
    && cp -rf admin catalog image install system index.php php.ini .htaccess.txt /www \
    && rm -rf /tmp/*

RUN set -xe \
    && touch /www/config.php /www/admin/config.php \
    && chmod -R 755 /www/image/cache \
    && chmod -R 755 /www/system/storage

EXPOSE 80

CMD ["/bin/sh"]
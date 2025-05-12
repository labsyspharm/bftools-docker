FROM alpine:3.21.3

RUN apk -Uuv add bash openjdk8-jre \
	&& wget https://github.com/ome/bioformats/releases/download/v8.1.1/bftools.zip \
	&& unzip bftools.zip -x '*.bat' -d /opt/ \
	&& rm /var/cache/apk/*

ENV PATH $PATH:/opt/bftools/

WORKDIR /tmp

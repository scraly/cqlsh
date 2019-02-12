FROM alpine:latest

LABEL version="0.1"
LABEL description="Container with cqlsh db tool"
LABEL maintainer="scraly@gmail.com"

RUN apk update

RUN apk -v --update add --no-cache \
        bash \
        postgresql-client \
        python \
        py-pip \
        less \
        groff \
        && \
    pip install --upgrade cqlsh  && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

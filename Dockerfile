FROM alpine:3.13.0

COPY orange .

RUN apk add openjdk11 python3 && \
    wget https://github.com/hartwigmedical/hmftools/releases/download/orange-v1.6/orange.jar && \
    mkdir /usr/local/share/orange/ && \
    mv orange.jar /usr/local/share/orange/ && \
    mv orange /usr/local/share/orange/ && \
    ln -s /usr/local/share/orange/orange /usr/local/bin/orange
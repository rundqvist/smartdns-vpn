FROM rundqvist/openvpn:latest

LABEL maintainer="mattias.rundqvist@icloud.com"

WORKDIR /app

COPY root /

ENV NETWORK='' \
    DNS_ENABLE=''

RUN apk add --update --no-cache sniproxy dnsmasq

EXPOSE 53 80 443

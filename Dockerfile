FROM rundqvist/openvpn:multiple

LABEL maintainer="mattias.rundqvist@icloud.com"

WORKDIR /app

COPY root /

RUN apk add --update --no-cache sniproxy

EXPOSE 80 443

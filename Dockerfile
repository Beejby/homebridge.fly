FROM node:18-alpine

WORKDIR /homebridge

RUN npm install -g --unsafe-perm homebridge homebridge-config-ui-x

RUN mkdir -p /homebridge/config \
    && mkdir -p /homebridge/persist \
    && mkdir -p /homebridge/accessories

VOLUME /homebridge

CMD ["homebridge", "-U", "/homebridge"]

EXPOSE 51826
EXPOSE 8080

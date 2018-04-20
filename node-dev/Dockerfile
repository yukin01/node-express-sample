FROM node:8.11.1-alpine

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh && \
    apk add --update --no-cache tini && \
    npm install -g express-generator@4.16.0

WORKDIR /app

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "node" ]
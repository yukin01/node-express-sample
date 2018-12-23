FROM node:8.11.1-alpine

ENV NODE_ENV=production

COPY ./app /app

WORKDIR /app

RUN apk add --update --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo "Asia/Tokyo" > /etc/timezone && \
    apk del tzdata && \
    npm install

EXPOSE 3000

CMD [ "npm", "start" ]
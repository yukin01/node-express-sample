FROM node:8.11.1-alpine

ENV NODE_ENV=production

EXPOSE 3000

RUN apk add --update --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo "Asia/Tokyo" > /etc/timezone && \
    apk del tzdata

WORKDIR /app

COPY ./app/package*.json /app

RUN npm install

COPY ./app /app

CMD [ "npm", "start" ]
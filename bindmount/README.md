# bindmount

bind mount を利用して node.js の開発を行う  
clone した後以下のコマンドを実行

```bash
$ docker-compose build
$ docker-compose up -d
$ docker exec -it node /bin/sh
or
$ docker-compose exec webserver /bin/sh
$ npm install
```

ホスト上のファイルを編集したら

```
# npm start
```

で確認できる

## nodemon を使ってホットリロード

`docker-compose.yml` の command をコメントアウト

run scripts で制御しているのでそのまま起動して良い

```bash
$ docker-compose up

node         | > app@0.0.0 dev /app
node         | > nodemon
node         |
node         | [nodemon] 1.18.9
node         | [nodemon] to restart at any time, enter `rs`
node         | [nodemon] watching: *.*
node         | [nodemon] starting `node ./bin/www`
```

js ファイルを検知して再起動してくれる

パッケージをインストールしたい場合は別のシェルを起動して

```bash
$ docker-compose exec webserver /bin/sh
$ npm i -S hoge
```

などとする

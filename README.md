# node-express-sample

bind mount を利用して node.js の開発を行う  
clone した後以下のコマンドを実行

```
$ docker-compose build
$ docker-compose up -d
$ docker exec -it /bin/sh
# npm install
```

ホスト上のファイルを編集したら

```
# npm start
```

で確認できる

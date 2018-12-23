generate:
	docker container run \
	-it \
	--rm \
	-v ${PWD}/node/app:/app \
	node:10-alpine \
	/bin/sh -c \
		"npx express-generator --no-view /app && \
		cd /app && \
		npm install && \
		npm install -D nodemon"

install:
	docker container run \
	-it \
	--rm \
	-v ${PWD}/node/app:/app \
	node:10-alpine \
	/bin/sh -c "npm install"
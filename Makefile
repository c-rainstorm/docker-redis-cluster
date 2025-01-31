help:
	@echo "Please use 'make <target>' where <target> is one of"
	@echo "  build         builds docker-compose containers"
	@echo "  up            starts docker-compose containers"
	@echo "  down          stops the running docker-compose containers"
	@echo "  rebuild       rebuilds the image from scratch without using any cached layers"
	@echo "  bash          starts bash inside a running container."
	@echo "  cli           run redis-cli inside the container on the server with port 7000"
	@echo " ---------"
	@echo "Bulk build options"
	@echo "  build-3.0"
	@echo "  build-3.2"
	@echo "  build-4.0"
	@echo "  build-5.0"
	@echo "  build-latest"
	@echo "  build-all"
	@echo "----------"
	@echo "Push command options"
	@echo "  push-releases-3.0"
	@echo "  push-releases-3.2"
	@echo "  push-releases-4.0"
	@echo "  push-releases-5.0"
	@echo "  push-releases-latest"

build:
	docker-compose build

up:
	docker-compose up

down:
	docker-compose stop

rebuild:
	docker-compose build --no-cache

bash:
	docker-compose exec redis-cluster /bin/bash

cli:
	docker-compose exec redis-cluster /redis/src/redis-cli -p 7000

build-3.0:
	docker build --build-arg redis_version=3.0.0 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.0
	docker build --build-arg redis_version=3.0.1 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.1
	docker build --build-arg redis_version=3.0.2 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.2
	docker build --build-arg redis_version=3.0.3 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.3
	docker build --build-arg redis_version=3.0.4 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.4
	docker build --build-arg redis_version=3.0.5 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.5
	docker build --build-arg redis_version=3.0.6 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.6
	docker build --build-arg redis_version=3.0.7 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.7

build-3.2:
	docker build --build-arg redis_version=3.2.0 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.0
	docker build --build-arg redis_version=3.2.1 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.1
	docker build --build-arg redis_version=3.2.2 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.2
	docker build --build-arg redis_version=3.2.3 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.3
	docker build --build-arg redis_version=3.2.4 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.4
	docker build --build-arg redis_version=3.2.5 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.5
	docker build --build-arg redis_version=3.2.6 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.6
	docker build --build-arg redis_version=3.2.7 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.7
	docker build --build-arg redis_version=3.2.8 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.8
	docker build --build-arg redis_version=3.2.9 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.9
	docker build --build-arg redis_version=3.2.10 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.10
	docker build --build-arg redis_version=3.2.11 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.11
	docker build --build-arg redis_version=3.2.12 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.12
	docker build --build-arg redis_version=3.2.13 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.13

build-4.0:
	docker build --build-arg redis_version=4.0.0 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.0
	docker build --build-arg redis_version=4.0.1 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.1
	docker build --build-arg redis_version=4.0.2 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.2
	docker build --build-arg redis_version=4.0.3 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.3
	docker build --build-arg redis_version=4.0.4 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.4
	docker build --build-arg redis_version=4.0.5 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.5
	docker build --build-arg redis_version=4.0.6 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.6
	docker build --build-arg redis_version=4.0.7 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.7
	docker build --build-arg redis_version=4.0.8 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.8
	docker build --build-arg redis_version=4.0.9 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.9
	docker build --build-arg redis_version=4.0.10 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.10
	docker build --build-arg redis_version=4.0.11 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.11
	docker build --build-arg redis_version=4.0.12 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.12
	docker build --build-arg redis_version=4.0.13 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.13
	docker build --build-arg redis_version=4.0.14 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.14

build-5.0:
	docker build --build-arg redis_version=5.0.0 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.0
	docker build --build-arg redis_version=5.0.1 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.1
	docker build --build-arg redis_version=5.0.2 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.2
	docker build --build-arg redis_version=5.0.3 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.3
	docker build --build-arg redis_version=5.0.4 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.4
	docker build --build-arg redis_version=5.0.5 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.5

build-latest:
	docker build --build-arg redis_version=5.0.5 -t registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster .
	docker tag registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.5

build-all: build-3.0 build-3.2 build-4.0 build-5.0 build-latest

push-releases-3.0:
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.0
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.1
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.2
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.3
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.4
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.5
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.6
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.0.7

push-releases-3.2:
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.0
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.1
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.2
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.3
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.4
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.5
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.6
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.7
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.8
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.9
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.10
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.11
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.12
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:3.2.13

push-releases-4.0:
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.0
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.1
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.2
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.3
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.4
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.5
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.6
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.7
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.8
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.9
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.10
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.11
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.12
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.13
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:4.0.14

push-releases-5.0:
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.0
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.1
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.2
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.3
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.4
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:5.0.5

push-latest:
	docker push registry.cn-beijing.aliyuncs.com/rainstorm/redis-cluster:latest

push-all: push-releases-3.0 push-releases-3.2 push-releases-4.0 push-latest

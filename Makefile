export DOCKER_BUILDKIT = 1


clean:
	docker images | grep hansbogert/foobar | awk '{print $$3}' | xargs -r docker rmi -f
	docker builder prune  -af

build:
	docker-compose build foobar


buildx:
	docker-compose build foobarx

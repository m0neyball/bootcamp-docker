help:
	@echo "Please use 'make <target>' where <target> is one of"
	@echo "  build           build the project"
	@echo "  percona-cli	  run percona mysql cli inside the container"
	@echo "  redis-cli		  run redis cli inside the container"
	@echo "  mongo-cli		  run mongo cli inside the container"

build:
	@echo "Building project ..."
	docker-compose run -d percona

percona-cli:
	docker exec -it percona mysql -uroot -psecret

redis-cli:
	docker exec -it redis redis-cli

mongo-cli:
	docker exec -it mongo mongo

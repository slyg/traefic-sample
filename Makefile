.DEFAULT_GOAL: run

run:
	docker-compose up -d --remove-orphans
	open http://localhost:8080

stop:
	docker-compose down
	
restart-service-1:
	docker-compose stop service1
	docker-compose rm -f service1
	docker-compose up -d --remove-orphans service1
	@echo " "
	@echo "\033[0;94mRefresh http://localhost:8080 and see the ID has changed :)\033[0m"
	@echo " "

.PHONY: run stop restart-service-1
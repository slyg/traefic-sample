.DEFAULT_GOAL: run

run:
	docker-compose up -d --remove-orphans
	open http://localhost:8080

stop:
	docker-compose down

.PHONY: run stop
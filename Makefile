# ====================================
ELASTIC_SEARCH_CONTAINER = ubuntu_with_elastic_container
# ====================================

up:
	docker-compose up -d
	docker exec -it $(ELASTIC_SEARCH_CONTAINER) bash

down:
	docker-compose down

stop:
	docker-compose stop

build:
	docker-compose up -d --build
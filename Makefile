# ====================================
ELASTIC_SEARCH_CONTAINER = elasticstack_study_elasticsearch
# ====================================

up:
	docker-compose up -d

down:
	docker-compose down

stop:
	docker-compose stop

build:
	docker-compose up -d --build

open-es:
	docker exec -it $(ELASTIC_SEARCH_CONTAINER) bash
.PHONY: run stop clean restart unittest functest 

build:
	docker-compose build
run:
	docker-compose up -d
stop:
	docker-compose  stop

clean: stop
	docker-compose rm -f

restart: stop run

unittest:
	docker-compose run --rm dockerapp python3 test_adder.py

functest: run
	docker-compose run --rm dockerapp python3 test.py
	docker-compose stop
	docker-compose rm -f dockerapp redis


ps:
	docker-compose ps

logs:
	docker-compose logs

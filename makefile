.PHONY: run stop clean restart unittest functest  testhttpd testdefaultpage

build:
	docker-compose build
run:
	docker-compose up -d
stop:
	docker-compose  stop

testhttpd:
	./test/ckhttpd.bash

testdefaultpage:
	./test/ckdefpage.bash

testmainpage:
	./test/ckmain.bash

testall: testhttpd testdefaultpage testmainpage


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

.PHONY: run stop clean restart  testhttpd testdefaultpage testmainpage testall ps logs

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


ps:
	docker-compose ps

logs:
	docker-compose logs

images:
	docker images

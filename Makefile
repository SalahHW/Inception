start:
	mkdir -p ~/data/database/
	mkdir -p ~/data/web/
	docker compose -f ./srcs/docker-compose.yml up -d

stop:
	docker compose -f ./srcs/docker-compose.yml down

restart: stop start

clean: stop
	sudo rm -rf ~/data
	docker system prune -af
	docker volume rm -f srcs_database
	docker volume rm -f srcs_web

re: clean start

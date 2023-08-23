.PHONY:env
env:
	python -m venv venv
	
.PHONY:install
install:
	poetry install
	
.PHONY:migrate
migrate:
	poetry run python -m core.manage migrate
	
.PHONY:migrations
migrations:
	poetry run python -m core.manage makemigrations
.PHONY:run
run-server:
	poetry run python -m core.manage runserver
	
.PHONY:superuser
superuser:
	poetry run python -m core.manage createsuperuser
	
.PHONY:update
update: install migrate ;
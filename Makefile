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

.PHONY: install-pre-commit
install-pre-commit:
	poetry run pre-commit uninstall; poetry run pre-commit install

.PHONY: up-dependencies-only
up-dependencies-only:
	test -f .env || touch .env
	docker-compose -f docker-compose.dev.yaml up --force-recreate db

.PHONY:update
update: install migrate install-pre-commit ;

.PHONY: lint
lint:
	poetry run pre-commit run --all-files

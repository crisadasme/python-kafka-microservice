..DEFAULT_GOAL := help
.PHONY: help up stop down rebuild reset pull fromscratch setup create-env install lint test format post-install deploy all release

help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: install lint test format
all: install lint test format release deploy  

# Used by deploy action
PROJECT_NAME := python-kafka-microservice


## DOCKER COMPOSE ##
fromscratch: reset pull up
up: ## [docker-compose] run the project
	@docker-compose up
stop: ## [docker-compose] stop Docker containers without removing them
	@docker-compose stop
down: ## [docker-compose] stop and remove Docker containers
	@docker-compose down --remove-orphans
rebuild: ## [docker-compose] rebuild base Docker images
	@docker-compose down --remove-orphans
	@docker-compose build --no-cache
reset: ## [docker-compose] update Docker images and reset local databases
	@docker-compose down --volumes --remove-orphans
	@docker-compose pull
pull: ## [docker-compose] update Docker images without losing local databases
	@docker-compose down --remove-orphans
	@docker-compose pull

## LOCAL DEVELOPMENT ##
setup: ## [development] Setup a virutal environment
	@pip install virtualenv
	virtualenv .venv
	. .venv/bin/activate
install: ## [development] Install requirements dependencies
	@pip install --upgrade pip
	@pip3 install -r requirements/dev.txt
lint: ## [development] Runs linter
	# stop the build if there are Python syntax errors or undefined names
	@flake8 . --exclude .venv --count --select=E9,F63,F7,F82 --show-source --statistics

	# exit-zero treats all errors as warnings. The GitHub editor is 127 chars wide
	@flake8 . --exclude .venv --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics
test: ## [development] Runs unit tests
	# @pytest --cov-report annotate tests
format: ## [development] Format code and sort imports
	@black .
	@isort .
release: ## [development] Run semantic-release
	@semantic-release publish

deploy: ## [development] Dockerize project and push image to repository
	# build image
	@docker build -t $(PROJECT_NAME) .

	# LAST_TAG=${git describe --abbrev=0 --tags}
	# echo current version: $(LAST_TAG)
	# @docker tag $(ECR_REPOSITORY):latest 212760202707.dkr.ecr.us-east-1.amazonaws.com/$(ECR_REPOSITORY):$(VERSION_TAG)
	# @docker push 212760202707.dkr.ecr.us-east-1.amazonaws.com/$(ECR_REPOSITORY):$(VERSION_TAG)

	# # pushing release tag
	# docker tag $(ECR_REPOSITORY):latest 212760202707.dkr.ecr.us-east-1.amazonaws.com/$(ECR_REPOSITORY):latest
	# docker push 212760202707.dkr.ecr.us-east-1.amazonaws.com/$(ECR_REPOSITORY):latest


retry-release: ## [devops-utilities] retry last semantic-release
	@semantic-release publish --retry
dry-release: ## [devops-utilities] run dry semantic-release
	@semantic-release publish --noop

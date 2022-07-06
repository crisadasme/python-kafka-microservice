.PHONY: setup create-env install lint test format post-install deploy all release

ECR_REPOSITORY := devops-python-events-template

build: install lint test format
all: install lint test format release deploy  

# Build
setup:
	@pip install virtualenv
	virtualenv .venv
	. .venv/bin/activate
install:
	@pip install --upgrade pip
	@pip3 install -r requirements/dev.txt
lint:
	# stop the build if there are Python syntax errors or undefined names
	@flake8 . --exclude .venv --count --select=E9,F63,F7,F82 --show-source --statistics

	# exit-zero treats all errors as warnings. The GitHub editor is 127 chars wide
	@flake8 . --exclude .venv --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics
test:
	# @pytest --cov-report annotate tests
format:
	@black .
	@isort .
release:
	@semantic-release publish
# Deploy
deploy:
	# login ecr
	# @aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 212760202707.dkr.ecr.us-east-1.amazonaws.com

	# # build image
	# @docker build -t $(ECR_REPOSITORY) .

	# # pushing version tag
	# echo current version: $(VERSION_TAG)
	# @docker tag $(ECR_REPOSITORY):latest 212760202707.dkr.ecr.us-east-1.amazonaws.com/$(ECR_REPOSITORY):$(VERSION_TAG)
	# @docker push 212760202707.dkr.ecr.us-east-1.amazonaws.com/$(ECR_REPOSITORY):$(VERSION_TAG)

	# # pushing release tag
	# docker tag $(ECR_REPOSITORY):latest 212760202707.dkr.ecr.us-east-1.amazonaws.com/$(ECR_REPOSITORY):latest
	# docker push 212760202707.dkr.ecr.us-east-1.amazonaws.com/$(ECR_REPOSITORY):latest

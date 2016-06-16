DOCKER_IMAGE_NAME = nginx-fcgiwrap

build:
	docker build -t ${USER}/${DOCKER_IMAGE_NAME} .

run:
	docker run -d -v ${PWD}/nginx-fcgiwrap-docker/sample:/usr/share/nginx/html -p 80:80 ${USER}/${DOCKER_IMAGE_NAME}

console:
	docker run -it -p 80:80 ${USER}/${DOCKER_IMAGE_NAME} bash

.PHONY: build

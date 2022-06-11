.PHONY: build

build:
	pip install -e .

build-docker:
	docker build -t panoramix .

push-docker:
	docker tag panoramix:latest haliliceylan/panoramix:latest
	docker push haliliceylan/panoramix:latest
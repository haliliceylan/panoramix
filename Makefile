.PHONY: build

install:
	pip install -e .

build-docker:
	docker build -t panoramix .
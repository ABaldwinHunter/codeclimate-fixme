.PHONY: image test

IMAGE_NAME ?= codeclimate/codeclimate-fixme

image:
	docker build --rm -t $(IMAGE_NAME) .

test: image
	docker run --rm $(IMAGE_NAME) npm test
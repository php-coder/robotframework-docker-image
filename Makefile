ROBOT_VERSION := 3.2.1
IMAGE_VERSION := 1

build-and-tag:
	docker build . \
		--build-arg ROBOT_VERSION=$(ROBOT_VERSION) \
		--tag phpcoder/robotframework:latest \
		--tag phpcoder/robotframework:$(ROBOT_VERSION)-$(IMAGE_VERSION)

push:
	docker push phpcoder/robotframework:latest && \
	docker push phpcoder/robotframework:$(ROBOT_VERSION)-$(IMAGE_VERSION)

.PHONY: build-and-tag push

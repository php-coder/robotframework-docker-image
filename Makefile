ROBOT_VERSION := 3.2.1
IMAGE_VERSION := 1

docker-build-and-tag:
	docker build . \
		--build-arg ROBOT_VERSION=$(ROBOT_VERSION) \
		--tag phpcoder/robotframework:latest \
		--tag phpcoder/robotframework:$(ROBOT_VERSION)-$(IMAGE_VERSION)

docker-push-all:
	docker push phpcoder/robotframework:latest && \
	docker push phpcoder/robotframework:$(ROBOT_VERSION)-$(IMAGE_VERSION)

git-tag:
	git tag -a "$(ROBOT_VERSION)-$(IMAGE_VERSION)" -m "$(ROBOT_VERSION)-$(IMAGE_VERSION)"

git-push-all:
	git push && git push --tags

.PHONY: docker-build-and-tag docker-push-all
.PHONY: git-tag git-push-all

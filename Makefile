PROJECT=kolban-test
IMAGE=myimage
REPO_IMAGE=gcr.io/$(PROJECT)/$(IMAGE)

all:
	@echo "build"

build:
	docker build -t $(REPO_IMAGE) .

push:
	docker push $(REPO_IMAGE)

apply:
	kubectl apply -f pod.yaml
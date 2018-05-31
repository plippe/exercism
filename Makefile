.PHONY: build test release
.DEFAULT_GOAL := build

DOCKER_IMAGE := plippe/exercism

forall = \
	for LANGUAGE in languages/*; do \
		make $(1)-$$(echo $$LANGUAGE | rev | cut -d'/' -f1 | rev); \
	done

build:; $(call forall,build)
build-%:
	docker build \
		-t $(DOCKER_IMAGE):$* \
		-f languages/$*/Dockerfile \
		.

test:; $(call forall,test)
test-%:
	echo $*
	docker run \
		--rm \
		--interactive \
		--tty \
		--volume $(PWD)/languages/$*/hello-world:/opt/exercism \
		$(DOCKER_IMAGE):$*
		.

release:; $(call forall,release)
release-%:
	docker push $(DOCKER_IMAGE):$*

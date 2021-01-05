#!make

ifneq ("$(wildcard $(CURDIR)/.env)","")
	include $(CURDIR)/.env
	export $(shell sed 's/=.*//' .env)
endif

# Allow override for moby or another runtime
export DOCKER ?= docker

export MKDIR ?= mkdir

export REPO ?= l4t
export IMAGE_NAME ?= $(REPO)

# Used in driver pack base
export BIONIC_VERSION_ID ?= bionic
export XENIAL_VERSION_ID ?= xenial

# Default squash as our base images which need to copy from a
# dependencies image. Without this the images will be massive.
# Starting with JP 4.3, can can use layers again with the apt source.
# Allow additional options such as --squash
# export DOCKER_BUILD_ARGS ?= ""
export DOCKER_DEPS_IMAGE_BUILD_ARGS ?= --squash

export SDKM_DOWNLOADS ?= invalid

export DOCKERFILE_PREFIX ?= default

.PHONY: all

all: jetpack-deps driver-packs jetpacks

driver-packs: driver-pack-32.4.4 driver-pack-32.4.3 driver-pack-32.3.1 driver-pack-32.2.3 driver-pack-32.2.1 driver-pack-32.2.0 driver-pack-32.1


driver-pack-32.4.4: l4t-32.4.4-tx1 l4t-32.4.4-jax l4t-32.4.4-jax-8gb l4t-32.4.4-tx2 l4t-32.4.4-nano-dev l4t-32.4.4-nano l4t-32.4.4-nano-2gb-dev l4t-32.4.4-tx2i l4t-32.4.4-tx2-4gb l4t-32.4.4-nx-dev l4t-32.4.4-nx

driver-pack-32.4.3: l4t-32.4.3-tx1 l4t-32.4.3-jax l4t-32.4.3-jax-8gb l4t-32.4.3-tx2 l4t-32.4.3-nano-dev l4t-32.4.3-nano l4t-32.4.3-tx2i l4t-32.4.3-tx2-4gb l4t-32.4.3-nx-dev l4t-32.4.3-nx

driver-pack-32.3.1: l4t-32.3.1-tx1 l4t-32.3.1-jax l4t-32.3.1-jax-8gb l4t-32.3.1-tx2 l4t-32.3.1-nano-dev l4t-32.3.1-nano l4t-32.3.1-tx2i l4t-32.3.1-tx2-4gb

driver-pack-32.2.3: l4t-32.2.3-tx1 l4t-32.2.3-jax l4t-32.2.3-jax-8gb l4t-32.2.3-tx2 l4t-32.2.3-nano-dev l4t-32.2.3-nano l4t-32.2.3-tx2i l4t-32.2.3-tx2-4gb

driver-pack-32.2.1: l4t-32.2.1-tx1 l4t-32.2.1-jax l4t-32.2.1-jax-8gb l4t-32.2.1-tx2 l4t-32.2.1-nano-dev l4t-32.2.1-nano l4t-32.2.1-tx2i l4t-32.2.1-tx2-4gb

driver-pack-32.2.0: l4t-32.2.0-tx1 l4t-32.2.0-jax l4t-32.2.0-tx2 l4t-32.2.0-nano-dev l4t-32.2.0-nano l4t-32.2.0-tx2i l4t-32.2.0-tx2-4gb

driver-pack-32.1: l4t-32.1-jax l4t-32.1-tx2 l4t-32.1-nano-dev l4t-32.1-tx2i


l4t-%:
	make -C $(CURDIR)/docker/l4t $*

cti-%:
	make -C $(CURDIR)/docker/cti $@

image-%:
	make -C $(CURDIR)/flash $*-image

rootfs-%:
	make -C $(CURDIR)/flash/rootfs $*-rootfs

from-file-rootfs-%:
	make -C $(CURDIR)/flash/rootfs $*-from-file-rootfs

# Dependencies

deps-%:
	make -C $(CURDIR)/docker/jetpack $*-deps

from-deps-folder-%:
	make -C $(CURDIR)/docker/jetpack $*-from-deps-folder

# JetPack


32.4.4-%:
	make -C $(CURDIR)/docker/jetpack $@

32.4.3-%:
	make -C $(CURDIR)/docker/jetpack $@

32.3.1-%:
	make -C $(CURDIR)/docker/jetpack $@

32.2.3-%:
	make -C $(CURDIR)/docker/jetpack $@

32.2.1-%:
	make -C $(CURDIR)/docker/jetpack $@

32.2.0-%:
	make -C $(CURDIR)/docker/jetpack $@

32.1-%:
	make -C $(CURDIR)/docker/jetpack $@


# Samples

run-%-samples:
	$(DOCKER) run $(DOCKER_RUN_ARGS) \
				--rm \
				-it \
				--device=/dev/nvhost-ctrl \
				--device=/dev/nvhost-ctrl-gpu \
				--device=/dev/nvhost-prof-gpu \
				--device=/dev/nvmap \
				--device=/dev/nvhost-gpu \
				--device=/dev/nvhost-as-gpu \
				--device=/dev/nvhost-vic \
				$(REPO):$*-samples

build-%-tf_to_trt_image_classification:
	$(DOCKER) build $(DOCKER_BUILD_ARGS) \
					--build-arg IMAGE_NAME=$(IMAGE_NAME) \
					--build-arg TAG=$* \
					-t $(REPO):$*-tf_to_trt_image_classification \
					- < $(CURDIR)/docker/tf_to_trt_image_classification/samples/Dockerfile

run-%-tf_to_trt_image_classification:
	$(DOCKER) run $(DOCKER_RUN_ARGS) \
				--rm \
				-it \
				--device=/dev/nvhost-ctrl \
				--device=/dev/nvhost-ctrl-gpu \
				--device=/dev/nvhost-prof-gpu \
				--device=/dev/nvmap \
				--device=/dev/nvhost-gpu \
				--device=/dev/nvhost-as-gpu \
				--device=/dev/nvhost-vic \
				--device=/dev/tegra_dc_ctrl \
				$(REPO):$*-tf_to_trt_image_classification

build-%-tensorflow-zoo-devel:
	$(DOCKER) build --squash \
					--build-arg IMAGE_NAME=$(IMAGE_NAME) \
					--build-arg TAG=$* \
					-t $(REPO):$*-tensorflow-zoo-devel \
					-f $(CURDIR)/docker/examples/tensorflow/zoo/Dockerfile \
					$(CURDIR)/docker/examples/tensorflow/zoo/

build-%-tensorflow-zoo-min-full:
	$(DOCKER) build --squash \
					--build-arg IMAGE_NAME=$(IMAGE_NAME) \
					--build-arg TAG=$* \
					--build-arg DEPENDENCIES_IMAGE=$(IMAGE_NAME):$*-deps \
					-t $(REPO):$*-tensorflow-zoo-min-full \
					-f $(CURDIR)/docker/examples/tensorflow/zoo/$*-min-full.Dockerfile \
					$(CURDIR)/docker/examples/tensorflow/zoo/

build-%-tensorflow-zoo-min:
	$(DOCKER) build --squash \
					--build-arg IMAGE_NAME=$(IMAGE_NAME) \
					--build-arg TAG=$* \
					--build-arg DEPENDENCIES_IMAGE=$(IMAGE_NAME):$*-deps \
					-t $(REPO):$*-tensorflow-zoo-min \
					-f $(CURDIR)/docker/examples/tensorflow/zoo/$*-min.Dockerfile \
					$(CURDIR)/docker/examples/tensorflow/zoo/

# Libraries

opencv-4.0.1-%:
	make -C $(CURDIR)/docker/OpenCV $@

pytorch-1.1.0-%:
	make -C $(CURDIR)/docker/pytorch $@
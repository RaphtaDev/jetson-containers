#!make

32.4.4-jetpack-4.4.1-image: 32.4.4-tx1-jetpack-4.4.1-image 32.4.4-jax-jetpack-4.4.1-image 32.4.4-jax-8gb-jetpack-4.4.1-image 32.4.4-tx2-jetpack-4.4.1-image 32.4.4-nano-dev-jetpack-4.4.1-image 32.4.4-nano-jetpack-4.4.1-image 32.4.4-nano-2gb-dev-jetpack-4.4.1-image 32.4.4-tx2i-jetpack-4.4.1-image 32.4.4-tx2-4gb-jetpack-4.4.1-image 32.4.4-nx-dev-jetpack-4.4.1-image 32.4.4-nx-jetpack-4.4.1-image 
32.4.3-jetpack-4.4-image: 32.4.3-tx1-jetpack-4.4-image 32.4.3-jax-jetpack-4.4-image 32.4.3-jax-8gb-jetpack-4.4-image 32.4.3-tx2-jetpack-4.4-image 32.4.3-nano-dev-jetpack-4.4-image 32.4.3-nano-jetpack-4.4-image 32.4.3-tx2i-jetpack-4.4-image 32.4.3-tx2-4gb-jetpack-4.4-image 32.4.3-nx-dev-jetpack-4.4-image 32.4.3-nx-jetpack-4.4-image 
32.3.1-jetpack-4.3-image: 32.3.1-tx1-jetpack-4.3-image 32.3.1-jax-jetpack-4.3-image 32.3.1-jax-8gb-jetpack-4.3-image 32.3.1-tx2-jetpack-4.3-image 32.3.1-nano-dev-jetpack-4.3-image 32.3.1-nano-jetpack-4.3-image 32.3.1-tx2i-jetpack-4.3-image 32.3.1-tx2-4gb-jetpack-4.3-image 
32.2.3-jetpack-4.2.3-image: 32.2.3-tx1-jetpack-4.2.3-image 32.2.3-jax-jetpack-4.2.3-image 32.2.3-jax-8gb-jetpack-4.2.3-image 32.2.3-tx2-jetpack-4.2.3-image 32.2.3-nano-dev-jetpack-4.2.3-image 32.2.3-nano-jetpack-4.2.3-image 32.2.3-tx2i-jetpack-4.2.3-image 32.2.3-tx2-4gb-jetpack-4.2.3-image 
32.2.1-jetpack-4.2.2-image: 32.2.1-tx1-jetpack-4.2.2-image 32.2.1-jax-jetpack-4.2.2-image 32.2.1-jax-8gb-jetpack-4.2.2-image 32.2.1-tx2-jetpack-4.2.2-image 32.2.1-nano-dev-jetpack-4.2.2-image 32.2.1-nano-jetpack-4.2.2-image 32.2.1-tx2i-jetpack-4.2.2-image 32.2.1-tx2-4gb-jetpack-4.2.2-image 
32.2.0-jetpack-4.2.1-image: 32.2.0-tx1-jetpack-4.2.1-image 32.2.0-jax-jetpack-4.2.1-image 32.2.0-tx2-jetpack-4.2.1-image 32.2.0-nano-dev-jetpack-4.2.1-image 32.2.0-nano-jetpack-4.2.1-image 32.2.0-tx2i-jetpack-4.2.1-image 32.2.0-tx2-4gb-jetpack-4.2.1-image 
32.1-jetpack-4.2-image: 32.1-jax-jetpack-4.2-image 32.1-tx2-jetpack-4.2-image 32.1-nano-dev-jetpack-4.2-image 32.1-tx2i-jetpack-4.2-image 



32.4.4-tx1-jetpack-4.4.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.4" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.4-jax-jetpack-4.4.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.4" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.4-jax-8gb-jetpack-4.4.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.4" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.4-tx2-jetpack-4.4.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.4" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.4-nano-dev-jetpack-4.4.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.4" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.4-nano-jetpack-4.4.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.4" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.4-nano-2gb-dev-jetpack-4.4.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.4" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.4-tx2i-jetpack-4.4.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.4" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.4-tx2-4gb-jetpack-4.4.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.4" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.4-nx-dev-jetpack-4.4.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.4" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.4-nx-jetpack-4.4.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.4" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)


32.4.3-tx1-jetpack-4.4-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.3-jax-jetpack-4.4-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.3-jax-8gb-jetpack-4.4-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.3-tx2-jetpack-4.4-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.3-nano-dev-jetpack-4.4-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.3-nano-jetpack-4.4-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.3-tx2i-jetpack-4.4-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.3-tx2-4gb-jetpack-4.4-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.3-nx-dev-jetpack-4.4-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.4.3-nx-jetpack-4.4-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.4.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)


32.3.1-tx1-jetpack-4.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.3.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.3.1-jax-jetpack-4.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.3.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.3.1-jax-8gb-jetpack-4.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.3.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.3.1-tx2-jetpack-4.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.3.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.3.1-nano-dev-jetpack-4.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.3.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.3.1-nano-jetpack-4.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.3.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.3.1-tx2i-jetpack-4.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.3.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.3.1-tx2-4gb-jetpack-4.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.3.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)


32.2.3-tx1-jetpack-4.2.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.3-jax-jetpack-4.2.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.3-jax-8gb-jetpack-4.2.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.3-tx2-jetpack-4.2.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.3-nano-dev-jetpack-4.2.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.3-nano-jetpack-4.2.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.3-tx2i-jetpack-4.2.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.3-tx2-4gb-jetpack-4.2.3-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.3" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)


32.2.1-tx1-jetpack-4.2.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.1-jax-jetpack-4.2.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.1-jax-8gb-jetpack-4.2.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.1-tx2-jetpack-4.2.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.1-nano-dev-jetpack-4.2.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.1-nano-jetpack-4.2.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.1-tx2i-jetpack-4.2.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.1-tx2-4gb-jetpack-4.2.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)


32.2.0-tx1-jetpack-4.2.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.0" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.0-jax-jetpack-4.2.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.0" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.0-tx2-jetpack-4.2.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.0" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.0-nano-dev-jetpack-4.2.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.0" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.0-nano-jetpack-4.2.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.0" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.0-tx2i-jetpack-4.2.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.0" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.2.0-tx2-4gb-jetpack-4.2.1-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.2.0" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)


32.1-jax-jetpack-4.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.1-tx2-jetpack-4.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.1-nano-dev-jetpack-4.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)
32.1-tx2i-jetpack-4.2-image:
	(DOCKER_BUILD_ROOT="$(CURDIR)/l4t/32.1" $(CURDIR)/build.sh ./conf/$@ $(REPO):$@)

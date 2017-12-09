#Makefile 

VERSION := 0.0.1

# publication repo
PROJECT  := zzz
#REGISTRY := EarlWaud/$(PROJECT)

#all: build-all #push-all
#build-all: build
#push-all: push

build:
	cd tomcat/ibp-demo && \
	jar -cvf ibp-demo.war * && \
	cd .. && \
	docker build --build-arg VERSION=$(VERSION) -t ibp-docker-demo:$(VERSION) . && \
	docker tag ibp-docker-demo:$(VERSION) ibp-docker-demo:latest

#push:
#	docker push $(REGISTRY)/tomcat:$(VERSION) && \
#	docker push $(REGISTRY)/tomcat:latest

run:
	docker run -d -p 8050:8080 --name ibp-demo --rm ibp-docker-demo:latest

join:
	docker exec -it ibp-demo /bin/bash

stop:
	docker stop ibp-demo

clean:
	rm tomcat/ibp-demo/*.war
	docker rm $(docker ps -aq)
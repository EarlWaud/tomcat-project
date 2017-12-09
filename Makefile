#Makefile 

VERSION := 0.0.1

# publication repo
PROJECT  := zzz
#REGISTRY := EarlWaud/$(PROJECT)

#all: build-all #push-all
#build-all: build
#push-all: push

build:
	cd tomcat && \
	docker build --build-arg VERSION=$(VERSION) -t ipb-dockker-demo:$(VERSION) . && \
	docker tag ipb-dockker-demo:$(VERSION) ipb-dockker-demo:latest

#push:
#	docker push $(REGISTRY)/tomcat:$(VERSION) && \
#	docker push $(REGISTRY)/tomcat:latest

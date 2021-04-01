NAME=ellisio/cloudsql-proxy
TAG=1.20.2

build:
	@docker build -t $(NAME) -t $(NAME):$(TAG) .

push: build
	@docker push $(NAME):latest
	@docker push $(NAME):$(TAG)

.ONESHELL:
.SHELL := /usr/bin/bash
.PHONY: all mongodb

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[35m%-10s\033[0m %s\n", $$1, $$2}'

pull:
	@git pull &>/dev/null

all: pull ## Install all Components of Application
	@sh PROJECT.sh all

debug:
	@sh -x PROJECT.sh all

mongodb: pull ## Install MongoDB for Application
	@sh PROJECT.sh mongodb

rabbitmq: pull ## Install RabbitMQ for Application
	@sh PROJECT.sh rabbitmq

mysql: pull ## Install MySQL for Application
	@sh PROJECT.sh mysql

redis: pull ## Install Redis for Application
	@sh PROJECT.sh redis

catalogue: pull ## Install Catalogue Application
	@sh PROJECT.sh catalogue

user: pull ## Install Catalogue Application
	@sh PROJECT.sh user

cart: pull ## Install Catalogue Application
	@sh PROJECT.sh cart

shipping: pull ## Install Catalogue Application
	@sh PROJECT.sh shipping

web: pull ## Install Catalogue Application
	@sh PROJECT.sh web

payment: pull ## Install Catalogue Application
	@sh PROJECT.sh payment

dispatch: pull ## Install Catalogue Application
	@sh PROJECT.sh dispatch

ratings: pull ## Install Catalogue Application
	@sh PROJECT.sh ratings

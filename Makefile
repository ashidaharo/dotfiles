.DEFAULT_GOAL := help

.PHONY: init
init: ## Initialize environment
	bash initialize.bash


.PHONY: deploy
deploy: ## Copy files
	bash deploy.bash

.PHONY: help
help: ## Print help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

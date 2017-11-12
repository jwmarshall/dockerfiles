SHELL:=/usr/bin/env bash
ALL:=$(shell for i in $$(ls -d */); do echo $${i%%/}; done)
ORG:=jwmarshall
#BUILD:=docker build -t

.PHONY: all clean $(ALL)

debug:
	@echo $(ALL)
	@echo $(PUSH)

$(ALL):
	docker build -t $(ORG)/$@ ./$@
	@if [[ "$(PUSH)" == "true" ]]; then \
		docker push $(ORG)/$@; \
	fi;

all: $(ALL)
	@echo "All done.."

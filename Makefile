SHELL:=/usr/bin/env bash
ALL:=$(shell for i in $$(ls -d */); do echo $${i%%/}; done)
ORG:=jwmarshall
BUILD:=docker build -t

.PHONY: all clean $(ALL)

debug:
	@echo $(ALL)

$(ALL):
	$(BUILD) $(ORG)/$@ ./$@

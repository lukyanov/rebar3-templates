REBAR := $(abspath ./)/rebar3
ifeq ($(wildcard $(REBAR)),)
	REBAR := $(shell which rebar)
endif

all: compile

.PHONY: compile
compile:
	$(REBAR) compile

.PHONY: clean
clean:
	$(REBAR) clean -a

.PHONY: distclean
distclean: clean
	rm -rf _build

.PHONY: release
release:
	$(REBAR) as prod release

.PHONY: run
run:
	$(REBAR) run

.PHONY: shell
shell:
	$(REBAR) auto

.PHONY: tar
tar:
	$(REBAR) as prod tar

.PHONY: unit-tests
unit-tests:
	$(REBAR) eunit

.PHONY: integration-tests
integration-tests:
	$(REBAR) ct

.PHONY: check
check: unit-tests integration-tests

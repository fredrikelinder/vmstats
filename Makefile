.DEFAULT_GOAL = all
.PHONY: all compile deps clean distclean check test
REBAR=./rebar

all:
	@$(REBAR) get-deps compile

compile:
	@$(REBAR) compile

deps:
	@$(REBAR) get-deps

clean:
	@$(REBAR) clean

distclean:
	@$(REBAR) clean delete-deps

check test:
	@$(REBAR) eunit skip_deps=true

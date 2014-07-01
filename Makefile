TARGETS= vim bash ghci
.PHONY: all $(TARGETS)

all: $(TARGETS)

$(TARGETS):
	make -C $@

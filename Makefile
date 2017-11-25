TARGETS= vim bash
.PHONY: all $(TARGETS)

all: $(TARGETS)

$(TARGETS):
	make -C $@

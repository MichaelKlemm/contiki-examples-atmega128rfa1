
IOT_EXAMPLE_DIR = ./examples

BUILD_EXAMPLES := $(sort $(dir $(wildcard $(IOT_EXAMPLE_DIR)/*/ )))
CLEAN_EXAMPLES := $(addsuffix .clean,$(BUILD_EXAMPLES))

all: $(BUILD_EXAMPLES)
clean: $(CLEAN_EXAMPLES)

$(BUILD_EXAMPLES): 
	@echo "Build $@"
	$(MAKE) -C $(basename $@) all

$(CLEAN_EXAMPLES):
	@echo "Build $@"
	$(MAKE) -C $(basename $@) clean

.PHONY: all $(BUILD_EXAMPLES) 
.PHONY: clean $(CLEAN_EXAMPLES)


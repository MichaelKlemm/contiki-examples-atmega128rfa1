
EXAMPLE_DIR = ./examples

# MySmartUSB light (AVR Programmer)
AVRDUDE_PROGRAMMER := stk500v2
AVRDUDE_PORT :=/dev/ttyUSBmySmartUSB

BUILD_EXAMPLES := $(sort $(dir $(wildcard $(EXAMPLE_DIR)/*/ )))
CLEAN_EXAMPLES := $(addsuffix .clean,$(BUILD_EXAMPLES))

all: $(BUILD_EXAMPLES)
clean: $(CLEAN_EXAMPLES)
clean-build: clean all

$(BUILD_EXAMPLES): 
	@echo "Build $(basename $@)"
	@$(MAKE) -C $(basename $@) all > $(basename $@)/build.log 2> $(basename $@)/build.err
	@echo "Finished! Output was written to $(basename $@)build.(log|err)"

$(CLEAN_EXAMPLES):
	@echo "Clean $(basename $@)"
	@$(MAKE) -C $(basename $@) clean > /dev/null

.PHONY: all $(BUILD_EXAMPLES) 
.PHONY: clean $(CLEAN_EXAMPLES)


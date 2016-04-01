CONTIKI_PROJECT = SLIP-Radio

#### USE THIS FOR 6LoWPAN ####
CONTIKI_WITH_RPL = 0
CONTIKI_WITH_IPV6 = 1

#### USE THIS FOR SLIP-RADIO ONLY ####
CFLAGS += -DPROJECT_CONF_H=\"project-conf.h\"
PROJECT_SOURCEFILES += slip-net.c no-framer.c
APPS = slip-cmd

all: slip-radio.hex

# Root of the project repository
PROJECT_ROOT = ../../
include $(PROJECT_ROOT)/Makefile.include

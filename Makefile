CONTIKI_PROJECT = IoT

#### USE THIS FOR RIME ONLY ####
#CONTIKI_CONF_RANDOM_MAC=1
#CONTIKI_WITH_RIME = 1

#### USE THIS FOR 6LoWPAN ####
CONTIKI_WITH_RPL = 0
CONTIKI_WITH_IPV6 = 1

#### USE THIS FOR SLIP-RADIO ONLY ####
CFLAGS += -DPROJECT_CONF_H=\"project-conf.h\"
PROJECT_SOURCEFILES += slip-net.c no-framer.c
APPS = slip-cmd

# Contiki repository itself
CONTIKI = ./contiki

# Our self defined targets
TARGETDIRS += targets

# Include the contiki Makefile
include $(CONTIKI)/Makefile.include


CONTIKI_PROJECT = IoT

CONTIKI_CONF_RANDOM_MAC=1
CONTIKI_WITH_RIME = 1

# Contiki repository itself
CONTIKI = ./contiki

# Our self defined targets
TARGETDIRS += targets

#APPDIRS += ${addprefix ../apps/, $(APPS)}
#APPS = myApp

# Include the contiki Makefile
include $(CONTIKI)/Makefile.include

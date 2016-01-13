CONTIKI_PROJECT = example
all: $(CONTIKI_PROJECT)

DEFINES = WITH_NODE_ID=1,CONTIKI_CONF_RANDOM_MAC=1
#UIP_CONF_IPV6=1

CONTIKI = ./contiki

TARGETDIRS += targets

APPDIRS += ${addprefix ../apps/, $(APPS)}

APPS = myApp

include $(CONTIKI)/Makefile.include

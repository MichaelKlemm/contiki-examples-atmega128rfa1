CONTIKI_PROJECT = example
all: rime-broadcast.hex 
#udp-server.hex udp-client.hex

DEFINES = CONTIKI_CONF_RANDOM_MAC=1
#UIP_CONF_IPV6=1
#CONTIKI_WITH_IPV6 = 1
CONTIKI_WITH_RIME = 1

CONTIKI = ./contiki

TARGETDIRS += targets

APPDIRS += ${addprefix ../apps/, $(APPS)}

APPS = myApp

include $(CONTIKI)/Makefile.include

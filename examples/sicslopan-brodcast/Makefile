CONTIKI_PROJECT = Broadcast6

CONTIKI_WITH_RPL = 1
CONTIKI_WITH_IPV6 = 1
CFLAGS += -DPROJECT_CONF_H=\"project-conf.h\"

all: ipv6-broadcast.hex
flash: ipv6-broadcast.u

# Root of the project repository
PROJECT_ROOT = ../../
include $(PROJECT_ROOT)/Makefile.include

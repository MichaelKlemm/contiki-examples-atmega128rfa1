all: websense

# Root of the project repository
PROJECT_ROOT = ../../../

all: websense.co websense.out websense.hex

APPS += webbrowser

CFLAGS += -DPROJECT_CONF_H=\"project-conf.h\"
CONTIKI_SOURCEFILES += wget.c
PROJECTDIRS += ../border-router
PROJECT_SOURCEFILES += httpd-simple.c

CONTIKI_WITH_IPV6 = 1
include $(PROJECT_ROOT)/Makefile.include

$(CONTIKI)/tools/tunslip6:	$(CONTIKI)/tools/tunslip6.c
	(cd $(CONTIKI)/tools && $(MAKE) tunslip6)

connect-router:	$(CONTIKI)/tools/tunslip6
	sudo $(CONTIKI)/tools/tunslip6 aaaa::1/64

connect-router-cooja:	$(CONTIKI)/tools/tunslip6
	sudo $(CONTIKI)/tools/tunslip6 -a 127.0.0.1 aaaa::1/64

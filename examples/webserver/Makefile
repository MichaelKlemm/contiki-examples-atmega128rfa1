CONTIKI_PROJECT = SLIP-Radio

all:
	$(MAKE) -C border-router all
	$(MAKE) -C websense all

clean:
	$(MAKE) -C border-router clean
	$(MAKE) -C websense clean
	
rebuild: clean all


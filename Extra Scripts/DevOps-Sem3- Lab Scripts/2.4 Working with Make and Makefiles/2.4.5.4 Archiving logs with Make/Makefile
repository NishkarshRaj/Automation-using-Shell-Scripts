
SHELL = /bin/bash
LOGDIR = /var/log
LOGEXT = log
BACKUPDIR = /archives

start: createarchive movearchive deletelogs
	echo "Logs files are archived and deleted"

createarchive:
	tar czf archive.tar.gz $(shell find $(LOGDIR) -name "*.$(LOGEXT)")

movearchive:
	mv archive.tar.gz $(BACKUPDIR)/$(shell date +%F).tar.gz

deletelogs:
	rm $(shell find $(LOGDIR) -name "*.$(LOGEXT)")

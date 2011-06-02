build:
	sh ./gradlew release

install:
	mkdir -p $(DESTDIR)/usr/elasticsearch
	cp -r bin lib config $(DESTDIR)/usr/elasticsearch/
	mkdir -p $(DESTDIR)/var/elasticsearch/data
	mkdir -p $(DESTDIR)/var/elasticsearch/work
	mkdir -p $(DESTDIR)/var/elasticsearch/logs
	mkdir -p $(DESTDIR)/etc/init
	cp elasticsearch.conf $(DESTDIR)/etc/init/
	mkdir -p $(DESTDIR)/etc/security/limits.d
	cp limits.conf $(DESTDIR)/etc/security/limits.d/elasticsearch.conf

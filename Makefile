build:
	sh ./gradlew explodedDist

install:
	mkdir -p $(DESTDIR)/usr/elasticsearch
	cp -r build/distributions/exploded/bin build/distributions/exploded/lib $(DESTDIR)/usr/elasticsearch/
	mkdir -p $(DESTDIR)/usr/elasticsearch/config
	cp -r config/deb.elasticsearch.yml $(DESTDIR)/usr/elasticsearch/config/
	cp -r config/deb.logging.yml $(DESTDIR)/usr/elasticsearch/config/
	mkdir -p $(DESTDIR)/var/elasticsearch/data
	mkdir -p $(DESTDIR)/var/elasticsearch/work
	mkdir -p $(DESTDIR)/var/elasticsearch/logs
	mkdir -p $(DESTDIR)/etc/init
	cp upstart/elasticsearch.conf $(DESTDIR)/etc/init/
	mkdir -p $(DESTDIR)/etc/security/limits.d
	cp limits.d/elasticsearch.conf $(DESTDIR)/etc/security/limits.d/elasticsearch.conf
	mkdir -p $(DESTDIR)/usr/share/elasticsearch/
	cp -r build/distributions/plugins $(DESTDIR)/usr/share/elasticsearch/plugins

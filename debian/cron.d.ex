#
# Regular cron jobs for the elasticsearch package
#
0 4	* * *	root	[ -x /usr/bin/elasticsearch_maintenance ] && /usr/bin/elasticsearch_maintenance

#!bash
wget http://downloads.dbpedia.org/2016-10/core-i18n/es/page_ids_es.ttl.bz2
wget http://downloads.dbpedia.org/2016-10/core-i18n/es/labels_es.ttl.bz2 
wget http://downloads.dbpedia.org/2016-10/core-i18n/es/transitive_redirects_es.ttl.bz2
bunzip2 -k *.bz2
rm -rf *.bz2

python lookup-service.py sorted_list_es.dat

#!/bin/sh

wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.tar.gz
wget https://dlcdn.apache.org/solr/solr/9.4.0/solr-9.4.0.tgz

tar xzf ./jdk-21_linux-x64_bin.tar.gz -C /usr/local/jdk-21/
tar xzf ./solr-9.4.0.tgz -C /usr/local/solr-9.4.0/

sudo nano /usr/local/solr-9.4.0/bin/solr.in.sh
# SET SOLR_JAVA_HOME="/usr/local/jdk-21" ]
# Press ctrl + x , y, <RETURN>

/usr/local/solr-9.4.0/bin/solr start

# visit http://localhost:8983/solr/
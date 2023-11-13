#!/bin/sh

wget https://download.java.net/java/GA/jdk12.0.2/e482c34c86bd4bf8b56c0b35558996b9/10/GPL/openjdk-12.0.2_linux-x64_bin.tar.gz
wget https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz

tar xzf ./openjdk-12.0.2_linux-x64_bin.tar.gz -C /usr/local/jdk-12.0.2/
tar xzf ./solr-7.5.0.tgz -C /usr/local/solr-7.5.0/

sudo nano /usr/local/solr-7.5.0/bin/solr.in.sh
# SET SOLR_JAVA_HOME="/usr/local/jdk-12.0.2" ]
# Press ctrl + x , y, <RETURN>

/usr/local/solr-7.5.0/bin/solr start

# visit http://localhost:8983/solr/
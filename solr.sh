#!/bin/sh

echo '\nWhen the editor opens, set SOLR_JAVA_HOME="/usr/local/jdk-21.0.1"'
echo '\nPress ctrl + x , y, <RETURN>'

wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.tar.gz
wget https://dlcdn.apache.org/solr/solr/9.4.0/solr-9.4.0.tgz

sudo tar xzf ./jdk-21_linux-x64_bin.tar.gz -C /usr/local/
sudo tar xzf ./solr-9.4.0.tgz -C /usr/local/

rm ./jdk-21_linux-x64_bin.tar.gz
rm ./solr-9.4.0.tgz

sudo nano /usr/local/solr-9.4.0/bin/solr.in.sh
# set SOLR_JAVA_HOME="/usr/local/jdk-21.0.1"
# Press ctrl + x , y, <RETURN>

/usr/local/solr-9.4.0/bin/solr start

# visit http://localhost:8983/solr/
echo '\nVisit this URL: http://localhost:8983/solr/'
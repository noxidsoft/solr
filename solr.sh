#!/bin/sh
# solr-9.4.0 tested as at 2023-11-13 on WSL2

echo '\nWhen the editor opens, set SOLR_JAVA_HOME="/usr/local/jdk-21.0.1"'
echo '\nPress ctrl + x , y, <RETURN>\n'

wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.tar.gz
wget https://dlcdn.apache.org/solr/solr/9.4.0/solr-9.4.0.tgz

sudo tar xzf ./jdk-21_linux-x64_bin.tar.gz -C /usr/local/
tar xzf ./solr-9.4.0.tgz -C ~/

rm ./jdk-21_linux-x64_bin.tar.gz
rm ./solr-9.4.0.tgz

nano ~/solr-9.4.0/bin/solr.in.sh
# set SOLR_JAVA_HOME="/usr/local/jdk-21.0.1"
# Press ctrl + x , y, <RETURN>

~/solr-9.4.0/bin/solr start

# visit http://localhost:8983/solr/
echo '\nVisit this URL: http://localhost:8983/solr/\n'
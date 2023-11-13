# solr

```sh
$ sh solr.sh
```

When the editor opens, set `SOLR_JAVA_HOME="/usr/local/jdk-21.0.1"`

To save, Press ctrl + x , y, <RETURN>

If using Ubuntu/WSL2, you can kill ports if needed like this ($PORT is the port number if known):

```sh
$> lsof -ti :$PORT
```

then...

```sh
$> kill $(lsof -ti :$PORT)
```

or if parse SIGKILL in some cases (big hammer solution):

```sh
$> kill -9 $(lsof -ti :$PORT)
```
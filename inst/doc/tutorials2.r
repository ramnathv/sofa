# Simultaneously write data to CouchDB along with API calls
## Using the alm package to get altmetrics data on PLoS papers
### Ping to make sure CouchDB is on
sofa_ping()

### Create a new database
sofa_createdb(dbname='alm_couchdb')

### write couchdb database name to options
options("alm_couchdb" = "alm_couchdb")

### List the databases
sofa_listdbs()

### Search for altmetrics normally, w/o writing to a database
alm(doi="10.1371/journal.pone.0029797")

### Search for altmetrics normally, while writing to a database
alm(doi="10.1371/journal.pone.0029797", write2couch=TRUE)

### Make lots of calls, and write them simultaneously
# install_github("rplos", "ropensci")
library(rplos)
dois <- searchplos(terms='evolution', fields='id', limit = 400)
# out <- alm(doi=as.character(dois[,1]), write2couch=TRUE)
# lapply(out, head)

#### writing data to CouchDB does take a bit longer
system.time(alm(doi=as.character(dois[,1])[1:60], write2couch=FALSE))
system.time(alm(doi=as.character(dois[,1])[1:60], write2couch=TRUE))

### Search using elasticsearch
#### tell elasticsearch to start indexing your database
elastic_start(dbname="alm_couchdb")

#### search your database
elastic_search(dbname="alm_couchdb", q="twitter", parse_=TRUE)


### Using views 
#### write a view - here letting key be the default of null
sofa_view_put(dbname='alm_couchdb', design_name='myview', value="doc.baseurl")

#### get info on your new view
sofa_view_get(dbname='alm_couchdb', design_name='almview2')

#### get data using a view
sofa_view_search(dbname='alm_couchdb', design_name='almview2')

#### delete the view
sofa_view_del(dbname='alm_couchdb', design_name='almview2')

#### a different query
sofa_view_put(dbname='alm_couchdb', design_name='almview5', value="[doc.baseurl,doc.queryargs]")
out <- sofa_view_search(dbname='alm_couchdb', design_name='almview5')
out[[3]][[1]]$value[[1]] # can see base url used
fromJSON(out[[3]][[1]]$value[[2]]) # ...and the query arguments 
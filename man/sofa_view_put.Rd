\name{sofa_view_put}
\alias{sofa_view_put}
\title{Put a design document (i.e., a view) into your CouchDB database.}
\usage{
  sofa_view_put(dbname, design_name, fxnname = "foo",
    key = "null", value = "doc",
    endpoint = "http://127.0.0.1", port = 5984)
}
\arguments{
  \item{dbname}{Database name}

  \item{design_name}{Design document name}

  \item{endpoint}{the endpoint, defaults to localhost
  (http://127.0.0.1)}

  \item{port}{port to connect to, defaults to 5984}
}
\description{
  Put a design document (i.e., a view) into your CouchDB
  database.
}
\details{
  If you are writing a complicated javascript function,
  better to do that in the Futon CouchDB interface or
  otherwise.
}
\examples{
\dontrun{
sofa_view_put(dbname='alm_couchdb', design_name='almview1')
sofa_view_put(dbname='alm_couchdb', design_name='almview2', value="doc.baseurl")
sofa_view_put(dbname='alm_couchdb', design_name='almview5', value="[doc.baseurl,doc.queryargs]")
}
}


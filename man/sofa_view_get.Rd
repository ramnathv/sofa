\name{sofa_view_get}
\alias{sofa_view_get}
\title{Get info on a design document (i.e., a view) in your CouchDB database.}
\usage{
  sofa_view_get(dbname, design_name,
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
  Get info on a design document (i.e., a view) in your
  CouchDB database.
}
\examples{
\dontrun{
sofa_view_get(dbname='alm_couchdb', design_name='almview1')
}
}


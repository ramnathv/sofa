\name{sofa_ping}
\alias{sofa_ping}
\title{Ping the couchdb server.}
\usage{
  sofa_ping(endpoint = "localhost", port = 5984,
    username = NULL, pwd = NULL)
}
\arguments{
  \item{endpoint}{the endpoint, defaults to localhost
  (http://127.0.0.1)}

  \item{port}{port to connect to, defaults to 5984}

  \item{username}{Your cloudant or iriscouch username}

  \item{pwd}{Your cloudant or iriscouch password}
}
\description{
  Ping the couchdb server.
}
\examples{
sofa_ping()
}


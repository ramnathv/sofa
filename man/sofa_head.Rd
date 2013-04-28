\name{sofa_head}
\alias{sofa_head}
\title{Just get header info on a document}
\usage{
  sofa_head(endpoint = "http://127.0.0.1", port = 5984,
    dbname, docid)
}
\arguments{
  \item{dbname}{Database name. (charcter)}

  \item{docid}{Document ID (character)}

  \item{endpoint}{the endpoint, defaults to localhost
  (http://127.0.0.1)}

  \item{port}{port to connect to, defaults to 5984}
}
\description{
  Just get header info on a document
}
\examples{
sofa_head(dbname="sofadb", docid="dudesbeer")
}

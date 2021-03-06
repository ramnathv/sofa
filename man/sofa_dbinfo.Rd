\name{sofa_dbinfo}
\alias{sofa_dbinfo}
\title{List database info.}
\usage{
  sofa_dbinfo(dbname, endpoint = "localhost", port = 5984,
    username = NULL, pwd = NULL)
}
\arguments{
  \item{endpoint}{One of localhost, cloudant, or iriscouch.
  For local work use the default localhost. For cloudant or
  iriscouch you will need accounts with those database
  services.}

  \item{port}{The port to use. Only applicable if using
  endpoint="localhost".}

  \item{username}{Your cloudant or iriscouch username}

  \item{pwd}{Your cloudant or iriscouch password}
}
\description{
  List database info.
}
\examples{
\donttest{
# local databasees
sofa_dbinfo(dbname="dudedb")

# databasees on cloudant
## passing username and password in function call
sofa_dbinfo("cloudant", username='yourusername', pwd='yourpassword')

## or setting username and password in options() call
cushion(cloudant_username='name', cloudant_pwd='pwd')
sofa_dbinfo("foobardb")
}
}


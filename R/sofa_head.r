#' Just get header info on a document
#'
#' @inheritParams sofa_ping
#' @param dbname Database name. (charcter)
#' @param docid Document ID (character)
#' @param username Your cloudant or iriscouch username
#' @param pwd Your cloudant or iriscouch password
#' @examples
#' sofa_head(dbname="foobar", docid="dudesbeer")
#' @export
sofa_head <- function(endpoint="localhost", port=5984, dbname, docid, username=NULL, pwd=NULL)
{
  if(endpoint=="localhost"){
    call_ <- sprintf("http://127.0.0.1:%s/%s/%s", port, dbname, docid)
  } else
    if(endpoint=="cloudant"){
      auth <- get_pwd(username,pwd,"cloudant")
      call_ <- sprintf("https://%s:%s@%s.cloudant.com/%s/%s", auth[[1]], auth[[2]], auth[[1]], dbname, docid)
    } else
    {
      auth <- get_pwd(username,pwd,"iriscouch")
      call_ <- sprintf("https://%s.iriscouch.com/%s/%s", auth[[1]], dbname, docid)
    }
  out <- HEAD(call_)
  stop_for_status(out)
  out$headers
}

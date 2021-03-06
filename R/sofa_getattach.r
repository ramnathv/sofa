#' Get an attachment.
#'
#' @inheritParams sofa_ping
#' @param dbname Database name. (charcter)
#' @param docid Document ID (character)
#' @param attname Attachment name.
#' @examples
#' sofa_getattach(dbname="sofadb", docid="guysbeer")
#' @export
sofa_getattach <- function(endpoint="http://127.0.0.1", port=5984, dbname, docid, attname=NULL)
{
  if(is.null(attname)){
    call_ <- paste(paste(endpoint, port, sep=":"), "/", dbname, "/", docid, "?_attachments=true", sep="")
  } else
  {
    call_ <- paste(paste(endpoint, port, sep=":"), "/", dbname, "/", docid, "/", attname, sep="")
  }
  out <- GET(call_)
  stop_for_status(out)
  fromJSON(content(out))
}
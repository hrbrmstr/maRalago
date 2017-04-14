#' Is Trump at Mar-a-Lago
#'
#' @export
is_there <- function() {

  res <- httr::GET(
    url = "https://sheets.googleapis.com/v4/spreadsheets/1JWfwoJ5uSSxYry0AwGg3oc4FPsprIjWWVKWrFn-KqyE/values:batchGet",
    query = list(
      ranges="whereuat",
      key="AIzaSyB-Gb6hsgnEaZhE6wGoNIBM2BOumgHqFDQ"
    ), encode = "json"
  )

  res <- httr::content(res, as="text")
  res <- jsonlite::fromJSON(res)

  any(unlist(res$valueRanges$values) == "YES")

}

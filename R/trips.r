#' Trip Data
#'
#' @export
trips_info <- function() {

  res <- httr::GET(
    url = "https://sheets.googleapis.com/v4/spreadsheets/1JWfwoJ5uSSxYry0AwGg3oc4FPsprIjWWVKWrFn-KqyE/values:batchGet",
    query = list(
      ranges="trips",
      key="AIzaSyB-Gb6hsgnEaZhE6wGoNIBM2BOumgHqFDQ"
    ), encode = "json"
  )

  res <- httr::content(res, as="text")
  res <- jsonlite::fromJSON(res, flatten=TRUE)

  res <- tibble::as_data_frame(res$valueRanges$values[[1]])

  setNames(res[-1,], unlist(res[1,]))

}

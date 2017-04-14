#' Retrieve program names, descriptions and unit costs
#'
#' @export
could_pay_for <- function() {

  res <- httr::GET(
    url = "https://sheets.googleapis.com/v4/spreadsheets/1JWfwoJ5uSSxYry0AwGg3oc4FPsprIjWWVKWrFn-KqyE/values:batchGet",
    httr::add_headers(
      authority = "sheets.googleapis.com"
    ),
    query = list(
      ranges="alternatives",
      key="AIzaSyB-Gb6hsgnEaZhE6wGoNIBM2BOumgHqFDQ"
    ), encode = "json"
  )

  res <- httr::content(res, as="text")
  res <- jsonlite::fromJSON(res, flatten=TRUE)

  res <- tibble::as_data_frame(res$valueRanges$values[[1]])

  res <- setNames(res[-1,], unlist(res[1,]))

  res[,-4]

}

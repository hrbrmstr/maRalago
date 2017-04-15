#' Retrieve Trip Data (with costs)
#'
#' @export
trips_info <- function() {

  res <- read_trump_data("trips")

  res

}

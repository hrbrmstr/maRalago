#' Trip Data
#'
#' @export
trips_info <- function() {

  res <- read_trump_data("trips")

  res

}

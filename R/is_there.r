#' Is Trump at Mar-a-Lago?
#'
#' @export
is_there <- function() {

  res <- read_trump_data("whereuat")

  res$whereuat[1] == "YES"

}

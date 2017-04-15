#' Retrieve program names, descriptions and unit costs
#'
#' @export
could_pay_for <- function() {

  res <- read_trump_data("alternatives")

  res <- res[,-4]

  res[complete.cases(res),]

}

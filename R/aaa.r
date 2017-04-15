trump_sheet_url <- "https://docs.google.com/spreadsheets/d/1JWfwoJ5uSSxYry0AwGg3oc4FPsprIjWWVKWrFn-KqyE/export#gid=0"

read_trump_data <- function(sheet = c("whereuat", "trips", "alternatives")) {

  sheet <- match.arg(sheet, c("whereuat", "trips", "alternatives"))

  tf <- tempfile(fileext = ".xlsx")

  res <- httr::GET(trump_sheet_url, httr::write_disk(tf, overwrite = TRUE))

  httr::stop_for_status(res)

  suppressWarnings(suppressMessages(readxl::read_excel(tf, sheet = sheet)))

}

#' Download the full Excel file
#'
#' @md
#' @param destfile A character string with the name where the downloaded file is saved.
#'        Tilde-expansion is performed.
#' @param overwrite Will only overwrite existing path if TRUE.
#' @export
download_maralago <- function(destfile, overwrite = TRUE) {
  res <- httr::GET(trump_sheet_url,
                   httr::write_disk(path.expand(destfile), overwrite = overwrite),
                   httr::progress())
  httr::stop_for_status(res)
  invisible(destfile)
}
trump_sheet_url <- "https://docs.google.com/spreadsheets/d/1JWfwoJ5uSSxYry0AwGg3oc4FPsprIjWWVKWrFn-KqyE/export#gid=0"

read_trump_data <- function(sheet = c("whereuat", "trips", "alternatives")) {

  sheet <- match.arg(sheet, c("whereuat", "trips", "alternatives"))

  tf <- tempfile(fileext = ".xlsx")

  res <- httr::GET(trump_sheet_url, httr::write_disk(tf, overwrite = TRUE))

  httr::stop_for_status(res)

  suppressWarnings(suppressMessages(readxl::read_excel(tf, sheet = sheet)))

}
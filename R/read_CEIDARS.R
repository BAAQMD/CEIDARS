#' @name read_CEIDARS
#'
#' @title Functions to Read CEIDARS Files
#'
#' @description These functions read CEIDARS-formatted files.
#'     Problems with auto-detection of column types are avoided with the
#' use of explicit column specifications.
#'
#' @param path path to file
#' @param ... passed to [tbltools::read_csv()]
#'
#' @importFrom tbltools read_csv
#' @importFrom readr cols col_character col_number col_date col_integer
#'
NULL

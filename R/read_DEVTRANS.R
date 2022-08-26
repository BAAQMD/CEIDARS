#' read_DEVTRANS
#'
#' @describeIn read_CEIDARS Read DEVTRANS-formatted file
#'
#' @export
read_DEVTRANS <- function (
  path,
  ...
) {

  DEVTRANS_cols <- readr::cols(
    TRANS_ID = col_character(),
    CO = col_integer(),
    FACID = col_integer(),
    AB = col_character(),
    DIS = col_character(),
    ACTION = col_character(),
    DEV = col_integer(),
    DEVNM = col_character(),
    PERID = col_character(),
    NUMDEV = col_integer(),
    EQSIZE = col_number(),
    EQSIZE_CF = col_character(),
    EQUNITC = col_integer(),
    EQTYPEC = col_integer(),
    DEVSUBCO = col_character(),
    SECT = col_integer(),
    TWNSHP = col_integer(),
    TWNSHPB = col_character(),
    RANGE = col_integer(),
    RANGEB = col_character(),
    DEVD1 = col_character(),
    DEVD2 = col_character(),
    DEVCAP = col_integer(),
    MEMO_DEV = col_character(),
    DEVU_D = col_date(format = "%Y%m%d"),
    OPERATOR = col_character(),
    TDATE = col_date(format = "%Y%m%d"))

  DEVTRANS_data <-
    tbltools::read_csv(
      path,
      col_types = DEVTRANS_cols,
      ...)

  return(DEVTRANS_data)

}

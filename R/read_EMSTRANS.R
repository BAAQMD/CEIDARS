#' read_EMSTRANS
#'
#' @describeIn read_CEIDARS Read EMSTRANS-formatted file
#'
#' @export
read_EMSTRANS <- function (
  path,
  ...
) {

  EMSTRANS_cols <- readr::cols(
    TRANS_ID = col_character(),
    CO = col_integer(),
    FACID = col_integer(),
    AB = col_character(),
    DIS = col_character(),
    ACTION = col_character(),
    DEV = col_integer(),
    PROID = col_integer(),
    POL = col_integer(),
    UEMFACT = col_number(),  # NOTE: actually 'integer' according to CEIDARS2.5 spec
    CNTL1 = col_integer(),
    CNTL2 = col_integer(),
    CNTLEFF = col_number(),
    EMFACT = col_number(),  # NOTE: actually 'integer' according to CEIDARS2.5 spec
    EMORIG = col_integer(),
    EMREL = col_integer(),
    CR_FLAG = col_integer(),
    EMS = col_number(),
    HRMAXEMS = col_number(),
    METH = col_integer(),
    REASCH = col_integer(),
    EXEMS = col_number(),
    UNREMS = col_number(),
    POTENTIAL = col_number(),
    EMS_FORECAST = col_character(),
    EMSUP = col_date(format = "%Y%m%d"),
    MAINTAINED = col_character(),
    MEMO_EMS = col_character(),
    OPERATOR = col_character(),
    TDATE = col_date(format = "%Y%m%d"))

  EMSTRANS_data <-
    tbltools::read_csv(
      path,
      col_types = EMSTRANS_cols,
      ...)

  return(EMSTRANS_data)

}

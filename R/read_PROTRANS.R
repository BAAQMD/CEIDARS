#' read_PROTRANS
#'
#' @describeIn read_CEIDARS Read PROTRANS-formatted file
#'
#' @export
read_PROTRANS <- function (
  path,
  ...
) {

  PROTRANS_cols <- readr::cols(
    TRANS_ID = col_character(),
    CO = col_integer(),
    FACID = col_integer(),
    AB = col_character(),
    DIS = col_character(),
    ACTION = col_character(),
    DEV = col_integer(),
    PROID = col_integer(),
    PRDESC = col_character(),
    SCC = col_integer(),
    SIC = col_integer(),
    NAICS = col_character(),
    PR = col_double(),         # NOTE: actually 'integer' according to CEIDARS2.5 spec
    PRUNITS = col_integer(),
    UPR = col_double(),
    MAXHR_PR = col_double(),   # NOTE: actually 'integer' according to CEIDARS2.5 spec
    MAXD = col_double(),
    HEAT = col_double(),
    ASH = col_double(),
    S = col_double(),
    PRORIG = col_integer(),
    PRREL = col_integer(),
    STK = col_integer(),
    HPDY = col_integer(),
    DPWK = col_integer(),
    WPYR = col_integer(),
    YREST = col_integer(),
    PROD1 = col_character(),
    PROD2 = col_character(),
    PR_FORECAST = col_character(),
    CONF = col_character(),
    JANT = col_double(),
    FEBT = col_double(),
    MART = col_double(),
    APRT = col_double(),
    MAYT = col_double(),
    JUNT = col_double(),
    JULT = col_double(),
    AUGT = col_double(),
    SEPT = col_double(),
    OCTT = col_double(),
    NOVT = col_double(),
    DECT = col_double(),
    SPATIAL = col_character(),
    SEST = col_character(),
    PRUP = col_date(format = ""),
    OUTPUT = col_integer(),
    MEMO_PR = col_character(),
    ISDEFAULT = col_character(),
    OPERATOR = col_character(),
    TDATE = col_date(format = "%Y%m%d"))

  PROTRANS_data <-
    tbltools::read_csv(
      path,
      col_types = PROTRANS_cols,
      ...)

  return(PROTRANS_data)

}

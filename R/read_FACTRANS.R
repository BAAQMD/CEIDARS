#' read_FACTRANS
#'
#' @describeIn read_CEIDARS Read FACTRANS-formatted file
#'
#' @export
read_FACTRANS <- function (
  path,
  ...
) {

  FACTRANS_cols <- readr::cols(
    TRANS_ID = col_character(),
    CO = col_integer(),
    FACID = col_integer(),
    AB = col_character(),
    DIS = col_character(),
    ACTION = col_character(),
    FNAME = col_character(),
    FSTREET = col_character(),
    FCITY = col_character(),
    FZIP = col_integer(),
    FZIPEXT = col_integer(),
    PCONTACT = col_character(),
    AREAC = col_integer(),
    PHONE = col_integer(),
    FSIC = col_character(),
    FNAICS = col_character(),
    NEMP = col_integer(),
    MNAME = col_character(),
    MSTREET = col_character(),
    MCITY = col_character(),
    MSTATE = col_character(),
    MZIP = col_integer(),
    MZIPEXT = col_integer(),
    MCONTACT = col_character(),
    AQCR = col_integer(),
    FACSUBCO = col_character(),
    CODESIG = col_character(),
    NO2DESIG = col_character(),
    OZDESIG = col_character(),
    PMDESIG = col_character(),
    SO2DESIG = col_character(),
    FAC_PHASE = col_character(),
    FAC_FORECAST = col_character(),
    PRIORITY = col_character(),
    INDUSTRYWIDE = col_character(),
    FACD1 = col_character(),
    FACD2 = col_character(),
    FRS_ID = col_character(),
    FAC_LOC_ONLY = col_character(),
    CERR_CODE = col_character(),
    COORD_SYS = col_character(),
    DATUM = col_character(),
    SPHEROID = col_character(),
    X_USERCOORD = col_double(),
    Y_USERCOORD = col_double(),
    LOC_METH = col_character(),
    SMALL_COMM = col_character(),
    FAC_UPDATE = col_character(),
    CHAPIS = col_character(),
    MAINTAINED = col_character(),
    VINTAGE_EMS = col_integer(),
    MEMO_FAC = col_character(),
    FACU_D = col_date(),
    OPERATOR = col_character(),
    TDATE = col_date(format = "%Y%m%d"))

  FACTRANS_data <-
    tbltools::read_csv(
      path,
      col_types = FACTRANS_cols,
      ...)

  return(FACTRANS_data)

}

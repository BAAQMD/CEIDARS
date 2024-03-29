% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_CEIDARS.R, R/read_DEVTRANS.R,
%   R/read_EMSTRANS.R, R/read_FACTRANS.R, R/read_PROTRANS.R
\name{read_CEIDARS}
\alias{read_CEIDARS}
\alias{read_DEVTRANS}
\alias{read_EMSTRANS}
\alias{read_FACTRANS}
\alias{read_PROTRANS}
\title{Functions to Read CEIDARS Files}
\usage{
read_DEVTRANS(path, ...)

read_EMSTRANS(path, ...)

read_FACTRANS(path, ...)

read_PROTRANS(path, ...)
}
\arguments{
\item{path}{path to file}

\item{...}{passed to \code{\link[readr:read_delim]{readr::read_csv()}}}
}
\description{
These functions read CEIDARS-formatted files.
Problems with auto-detection of column types are avoided with the
use of explicit column specifications.
}
\section{Functions}{
\itemize{
\item \code{read_DEVTRANS}: Read DEVTRANS-formatted file

\item \code{read_EMSTRANS}: Read EMSTRANS-formatted file

\item \code{read_FACTRANS}: Read FACTRANS-formatted file

\item \code{read_PROTRANS}: Read PROTRANS-formatted file
}}


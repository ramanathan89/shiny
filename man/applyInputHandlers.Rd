% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/server-input-handlers.R
\name{applyInputHandlers}
\alias{applyInputHandlers}
\title{Apply input handlers to raw input values}
\usage{
applyInputHandlers(inputs)
}
\arguments{
\item{inputs}{A named list of input values.}
}
\description{
The purpose of this function is to make it possible for external packages to
test Shiny inputs. It takes a named list of raw input values, applies input
handlers to those values, and then returns a named list of the processed
values.
}
\details{
The raw input values should be in a named list. Some values may have names
like \code{"x:shiny.date"}. This function would apply the \code{"shiny.date"}
input handler to the value, and then rename the result to \code{"x"}, in the
output.
}
\examples{
applyInputHandlers(list(
  "m1" = list(list(1, 2), list(3, 4)),
  "m2:shiny.matrix" = list(list(1, 2), list(3, 4)),

  "d1" = "2016-01-01",
  "d2:shiny.date" = "2016-01-01",  # Date object

  "n1" = NULL,
  "n2:shiny.number" = NULL  # Converts to NA
))
}
\seealso{
registerInputHandler
}


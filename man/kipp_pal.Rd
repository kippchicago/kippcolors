% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scales.R
\name{kipp_pal}
\alias{kipp_pal}
\title{KIPP palettes with ramped colors}
\usage{
kipp_pal(palette = "kipp_div", alpha = 1, reverse = FALSE)
}
\arguments{
\item{palette}{Choose from `kipp_palettes` list}

\item{alpha}{transparecny from 0 (completely transparent) to 1 (completely opaque)}

\item{reverse}{If `TRUE``, the direction of the color ramp is reversed.}
}
\value{
a function that takes the number of colors needed as an argument
}
\description{
KIPP palettes with ramped colors
}
\examples{
library(scales)
show_col(kipp_pal()(10))

filled.contour(volcano,color.palette = kipp_pal(), asp=1)

}

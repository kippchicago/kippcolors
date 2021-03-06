
#' Theme inspired by kipp.org/brand
#'
#' Theme inspired by the plots on
#' \href{KIPP Brand Guidlines}{http://www.kipp.org/brand}.
#'
#' @inheritParams ggplot2::theme_light
#'
#' @importFrom ggplot2 %+% %+replace%
#'
#' @family themes kipp
#' @export

theme_kipp_light <- function(base_size = 12, base_family = "sans"){
  ggplot2::theme_light(base_size = base_size, base_family = base_family) +
    ggplot2::theme(strip.background = ggplot2::element_rect(fill = "#8D8685", color = "#8D8685"),
          axis.line = ggplot2::element_line(color = "#CFCCC1"),
          panel.grid = ggplot2::element_line(color = "#CFCCC1")
    )
}




#' A minimal Theme inspired by kipp.org/brand
#'
#' Theme inspired by the plots on
#' \href{KIPP Brand Guidlines}{http://www.kipp.org/brand}.
#'
#' @inheritParams kippcolors::theme_kipp_light
#'
#' @importFrom ggplot2 %+% %+replace%
#'
#' @family themes kipp
#' @export
theme_kipp_min <- function(){
  kippcolors::theme_kipp_light() +
  ggplot2::theme(
    axis.line = element_line(color = NA),
    panel.grid  = element_blank(),
    panel.background = element_rect(fill = kipp_colors$lightgray),
    panel.border = element_rect(color = NA))
}

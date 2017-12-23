#' KIPP palettes with ramped colors
#'
#' @param palette Choose from `kipp_palettes` list
#' @param alpha transparecny from 0 (completely transparent) to 1 (completely opaque)
#' @param reverse If `TRUE``, the direction of the color ramp is reversed.
#'
#' @return a function that takes the number of colors needed as an argument
#' @export
#'
#' @examples
#' library(scales)
#' show_col(kipp_pal()(10))
#'
#' filled.contour(volcano,color.palette = kipp_pal(), asp=1)
#'
kipp_pal <- function(palette="kipp_div", alpha = 1, reverse = FALSE) {
  pal <- kipp_palettes[[palette]]
  if (reverse){
    pal <- rev(pal)
  }

  #return
  grDevices::colorRampPalette(pal, alpha)
}

#' Setup color palette for ggplot2
#'
#' @rdname scale_color_kipp
#'
#' @param palette Choose from 'kipp_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete color palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @inheritParams viridis::scale_color_viridis
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = factor(cyl))) +
#'   scale_colour_kipp(palette="kipp_qual")
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = hp)) +
#'   scale_colour_kipp(palette="kipp_qual", discrete = FALSE)
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_kipp(palette="kipp_bluegray")
#' ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_kipp()
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_kipp <- function(palette="kipp_div",
                              discrete = TRUE, alpha = 1, reverse = FALSE, ...) {
  if (discrete) {
    discrete_scale("colour", "kipp", palette=kipp_pal(palette, alpha = alpha, reverse = reverse), ...)
  } else {
    scale_color_gradientn(colours = kipp_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
  #scale_colour_manual(values=kipp_palettes[[palette]])
}

#' @rdname scale_color_kipp
#' @export
scale_colour_kipp <- scale_color_kipp

#' #' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'kipp_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams kipp_pal
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_kipp <- function(palette="kipp_div",
                             discrete = TRUE, alpha=1, reverse = TRUE, ...) {
  if (discrete) {
    discrete_scale("fill", "kipp", palette=kipp_pal(palette, alpha = alpha, reverse = reverse), ...)
  }
  else {
    scale_fill_gradientn(colours = kipp_pal(palette, alpha = alpha, reverse = reverse)(256), ...)
  }
}


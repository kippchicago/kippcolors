#' KIPP Colors
#'
#' Named list of colors from the [KIPP official brand guide](www.kipp.org/brand).
#'
#'The list of available colors is: darkblue, blue, lightblue, skyblue, darkorange, orange,
#'lightorange, yellow, green, lightgreen, darkgray, gray, lightgray, and brown

#' @export
kipp_colors <- list(
  darkblue   = "#17345B", # blues
  blue       = "#255694",
  lightblue  = "#60A2D7",
  skyblue    = "#A7CFEE",

  darkorange  = "#E27425", # oranges
  orange      = "#F7941E",
  lightorange = "#FEBC11",
  yellow      = "#FEDA00",

  green       = "#439539", # greens
  lightgreen  = "#BCD631",

  darkgray    = "#8D8685", #grays
  gray        = "#CFCCC1",
  lightgray   = "#F4EFEB",

  brown       = "#C49A6C" #brown
)


#' KIPP Color Palettes
#'
#'A collection of color palettes based on the [KIPP official brand guide](www.kipp.org/brand).
#'
#'The list of available palettes is:
#' kipp_qual
#' kipp_div
#' kipp_greenorgange
#' kipp_blueorange
#' kipp_bluegray
#' kipp_greengray
#' kipp_orangegray
#' kipp_greenbrown
#' kipp_browngray
#' kipp_grays
#'
#'@examples
#'
#' # Make an x-y plot using the kipp_div palette
#' library(tidyverse)
#' df <- data.frame(x = rnorm(100, 0, 20),
#'           y = rnorm(100, 0, 20),
#'           cl = sample(letters[1:8], 100, replace=TRUE))
#' ggplot(df, aes(x, y, colour=cl, shape=cl)) +
#'   geom_point(size=4) +
#'   scale_colour_kipp() +
#'   theme_bw() +
#'   theme(aspect.ratio=1)
#'
#' # Make a histogram using the kipp_qual palette
#' ggplot(df, aes(x, fill=cl)) + geom_histogram() +
#'   scale_fill_kipp(palette="kipp_qual")

#' @export
kipp_palettes <- list(
  ## KIPP offical colors, less grays
  kipp_qual = c(kipp_colors$darkblue, # blues
                kipp_colors$blue,
                kipp_colors$lightblue,
                kipp_colors$skyblue,

                kipp_colors$darkorange, # oranges
                kipp_colors$orange,
                kipp_colors$lightorange,
                kipp_colors$yellow,

                kipp_colors$green, # greens
                kipp_colors$lightgreen,

                kipp_colors$brown #brown
  ),

  ## KIPP  official colors, sequentially, grays and browns removed.

  kipp_div = c(kipp_colors$darkblue, # blues
               kipp_colors$blue,

               kipp_colors$green, # greens
               kipp_colors$light,

               kipp_colors$yellow,  # oranges
               kipp_colors$lightorange,
               kipp_colors$orange,
               kipp_colors$darkorange
  ),

  kipp_greenorange = c(
    kipp_colors$green, # greens
    kipp_colors$light,

    kipp_colors$yellow,  # oranges
    kipp_colors$lightorange,
    kipp_colors$orange,
    kipp_colors$darkorange
  ),

  kipp_blueorange = c(
               kipp_colors$darkblue, # blues
               kipp_colors$blue,

               kipp_colors$yellow,  # oranges
               kipp_colors$lightorange,
               kipp_colors$orange,
               kipp_colors$darkorange
  ),

  ## Blue to Gray palette
  kipp_bluegray = c(kipp_colors$darkblue, # blues
                    kipp_colors$blue,
                    kipp_colors$lightblue,
                    kipp_colors$skyblue,


                    kipp_colors$lightgray, # grays
                    kipp_colors$gray,
                    kipp_colors$darkgray
                    ),


  ## Green to Gray palette
  kipp_greengray = c(kipp_colors$green, # greens
                     kipp_colors$lightgreen,

                     kipp_colors$lightgray, # grays
                     kipp_colors$gray,
                     kipp_colors$darkgray
                     ),

  ## Orange to Gray palette
  kipp_orangegray = c(kipp_colors$darkorange, # oranges
                      kipp_colors$orange,
                      kipp_colors$lightorange,
                      kipp_colors$yellow,

                      kipp_colors$lightgray, # grays
                      kipp_colors$gray,
                      kipp_colors$darkgray
                       ),

  ## Green to borwn diverging palette
  kipp_greenbrown = c(kipp_colors$green, # greens
                      kipp_colors$lightgreen,

                      kipp_colors$brown #brown
                      ),

  ## Brown to Gray palette
  kipp_browngray = c(kipp_colors$brown, #brown

                     kipp_colors$lightgray, # grays
                     kipp_colors$gray,
                     kipp_colors$darkgray
                     ),

  ## Gray only palette
  kipp_grays = c(kipp_colors$lightgray, # grays
                 kipp_colors$gray,
                 kipp_colors$darkgray
                 )
)



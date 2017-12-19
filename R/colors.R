#' KIPP Color Palettes
#'
#'A collection of color palettes based on the [KIPP official brand guide](www.kipp.org/brand).
#'
#'The list of available palettes is:
#' * kipp_qual
#' * kipp_div
#' * kipp_bluegray
#' * kipp_greengray
#' * kipp_orangegray
#' * kipp_greenbrown
#' * kipp_browngray
#' * kipp_grays
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
  kipp_qual = c("#17345B", # blues
                "#255694",
                "#60A2D7",
                "#A7CFEE",

                "#E27425", # oranges
                "#F7941E",
                "#FEBC11",
                "#FEDA00",

                "#439539", # greens
                "#BCD631",

                "#C49A6C" #brown
  ),

  ## KIPP  official colors, sequentially, grays and browns removed.

  kipp_div = c("#17345B", # blues
               "#255694",

               "#439539", # greens
               "#BCD631",

               "#FEDA00",  # oranges
               "#FEBC11",
               "#F7941E",
               "#E27425"
  ),


  ## Blue to Gray palette
  kipp_bluegray = c("#17345B", # blues
                    "#255694",
                    "#60A2D7",
                    "#A7CFEE",


                    "#F4EFEB", # grays
                    "#CFCCC1",
                    "#8D8685"
                    ),


  ## Green to Gray palette
  kipp_greengray = c("#439539", # greens
                     "#BCD631",

                     "#F4EFEB", # grays
                     "#CFCCC1",
                     "#8D8685"
                     ),

  ## Orange to Gray palette
  kipp_orangegray = c("#E27425", # oranges
                       "#F7941E",
                       "#FEBC11",
                       "#FEDA00",

                       "#F4EFEB", # grays
                       "#CFCCC1",
                       "#8D8685"
                       ),

  ## Green to borwn diverging palette
  kipp_greenbrown = c("#439539", # greens
                      "#BCD631",

                      "#C49A6C" #brown
                      ),

  ## Brown to Gray palette
  kipp_browngray = c("#C49A6C", #brown
                     "#F4EFEB", # grays
                     "#CFCCC1",
                     "#8D8685"
                     ),

  ## Gray only palette
  kipp_grays = c("#F4EFEB", # grays
                 "#CFCCC1",
                 "#8D8685"
                 )
)

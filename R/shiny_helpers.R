#' Creates www/kippcolors_*.css for using KIPP colors with `shinydashboard` apps
#'
#' @param color name header menu main color
#' @param directory locatoin where www/kippchicago_*.css should be stored
#'
#' @export
#'

use_kipp_chicago_css <- function(color = "blue", directory = ".") {
  # Create file path and assume using current working directy if non given
  if(dirname(directory) == ".") {
    message("Directory not provided. Using current working directory.")
    directory <- getwd()
  }
  directory_www <- sprintf("%s/www", directory)

#test if www directory exists
  created <- FALSE
  if(!dir.exists(directory_www)) {
    message("www directory doens't exits. Creating it.")
    dir.create(directory_www)
    created <- TRUE
  }

  #bail if css file already exists
  if(length(list.files(sprintf("%s/www", directory), pattern = "\\.css"))>0){
    if(created) unlink(directory_www)
    stop(crayon::red("CSS files arealdy exist in directory www/.\nDelete or rename before using this function."))
  }

  file_name <- sprintf("kippcolors_%s.css", color)

  file_location <- system.file("shiny_assets", file_name, package = "kippcolors")

  file_target <- sprintf("%s/%s",directory_www, file_name)
  file.copy(from = file_location, to = file_target)
  message("Addding %s to %s", file_name, directory_www)

  message(crayon::red("Please add the following to your dashboardBody() block in app.R or in UI.R:"))
  message(crayon::green(sprintf('tags$head(tags$link(rel = "stylesheet", type = "text/css", href = "%s"))',
                                file_name)))
}

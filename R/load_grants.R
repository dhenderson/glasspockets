#' Extracts grants from the JSON list returned by the glasspockets::glasspockets(...) method. 
#' Also converts date strings to date objects.
#' @param file.name File name (or path plus name) of the JSON file to load
#' @return Returns a dataframe where each row is a grant.
#' @examples
#' gates.grants <- load.grants("gates.json")
load.grants <- function(file.name){
  require("jsonlite")
  
  # load the JSON file
  glasspockets.list <- fromJSON(file.name)
  
  # get the grants as a dataframe
  grants <- glasspockets.list$grants
  
  # convert strings to date
  date.format <- "%Y-%m-%d"
  grants$start_date <- as.Date(grants$start_date, date.format)
  grants$end_date <- as.Date(grants$end_date, date.format)
  grants$modified <- as.Date(grants$modified, date.format)
  
  return(grants)
}
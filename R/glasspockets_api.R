#' Submits a search query to the glasspockets.org API, saves the result as JSON,
#' and returns a list object representing the JSON contents
#' @param   query       String search query, typically a foundation name
#' @param   file.name   String file name (can include path) to save the JSON file as
#' @param   api.key     An API key generated from glasspockets.org
#' @return  Returns a dataframe where every row is a grant
#' @examples
#' # setup your parameters
#' api.key <- "YOUR_API_KEY"
#' file.name <- "gates_foundation.json"
#' query <- "Gates"
#' 
#' # submit your query
#' gates.grants <- glasspockets.api(query, file.name, api.key)
glasspockets.api <- function(query, file.name, api.key){
  require("tools")
  
  # replace spaces in query with %20
  query <- gsub(" " , "%20", query)
  
  # make sure the file ends in .json, if it doesn't, add it
  if(file_ext(file.name) != "json"){
    file.name = paste(file.name, ".json", sep="")
  }
  
  url = paste("http://api.foundationcenter.org/reportingcommitment/search.php?query=", 
              query, "&format=json&apiKey=", api.key, sep="")
  
  download.file(url, file.name, method="curl")
  
  # load the grants
  grants <- load.grants(file.name)
  
  return(grants)
}


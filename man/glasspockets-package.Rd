\name{glasspockets-package}
\alias{glasspockets-package}
\alias{glasspockets}
\docType{package}
\title{
Glasspockets API
}
\description{
Wrapper for querying the glasspockets.org foundation grants API.
}
\details{
\tabular{ll}{
Package: \tab glasspockets\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-11-24\cr
License: \tab MIT\cr
}
}
\author{
David Henderson - fullcontactphilanthropy.com

Maintainer: David Henderson <david.henderson82@gmail.com>
}
\keyword{ package }
\examples{
# setup your parameters
api.key <- "YOUR_API_KEY"
file.name <- "gates_foundation.json"
query <- "Gates"

# load grants from an API call
gates.grants <- glasspockets.api(query, file.name, api.key)
 
# Load grants saved locally as a JSON file
gates.grants <- load.grants(file.name)

}

library(plumber)
library(jsonlite)

#* @get /
function() {
    ejemplo <- fromJSON(
    '{"Hola" : "Ulacit"}'
    )
  return(ejemplo)
}


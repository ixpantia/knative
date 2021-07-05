library(plumber)
library(jsonlite)

#* @get /
function() {
    ejemplo <- fromJSON(
    '{"Hola" : "Grupo R"}'
    )
  return(ejemplo)
}


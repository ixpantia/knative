library(plumber)
router <- plumb("api.R")
router$run(host = "0.0.0.0", swagger = FALSE, port = 9080)


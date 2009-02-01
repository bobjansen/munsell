library(ggplot2)
library(colorspace)

FILE <- (function() {
  attr(body(sys.function()), "srcfile")
})()$filename
PATH <- dirname(FILE)

lapply(dir(file.path(PATH, "R"), full.name=T), source)
load("data/munsell_map.rdata")

#### munsell are viewed under illuminant C
### rgb in R is under illuminant D65??

##Only part 1
library(tidyverse)
data <- readLines('adventofcode/day3_data.txt')

mul <- function(x,y){
  return(x*y)
}

formulas <- str_extract_all(data,  'mul\\(\\d+,\\d+\\)')

formulas <- unlist(formulas)

result <- c(sapply(formulas, function(x) eval(parse(text = x))))
sum(result)



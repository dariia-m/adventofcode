library(tidyverse)
#Part1
data <- readLines('adventofcode/day4_data.txt')

data_sep <- str_split(data, '')
data_sep <- unlist(data_sep)
data_m <- matrix(data_sep, nrow = 140, byrow = TRUE )

res1 <- apply(data_m, 1, function(x) str_extract_all(Reduce(paste0, x), "XMAS"))
res2 <- apply(data_m, 1, function(x) str_extract_all(Reduce(paste0, x), "SAMX"))
res3 <- apply(data_m, 2, function(x) str_extract_all(Reduce(paste0, x), "XMAS"))
res4 <- apply(data_m, 2, function(x) str_extract_all(Reduce(paste0, x), "SAMX"))
res5 <- sapply(split(data_m, row(data_m) - col(data_m)), function(x) str_extract_all(Reduce(paste0, x), "XMAS"))
res6 <- sapply(split(data_m, row(data_m) - col(data_m)), function(x)str_extract_all(Reduce(paste0, x), "SAMX"))
res7 <-  sapply(split(data_m, col(data_m)+ row(data_m)), function(x) str_extract_all(Reduce(paste0, x), "XMAS"))
res8 <-  sapply(split(data_m, col(data_m) + row(data_m)), function(x) str_extract_all(Reduce(paste0, x), "SAMX"))

vec <- c(unlist(res1), unlist(res2), unlist(res3), unlist(res4), unlist(res5), unlist(res6), unlist(res7), unlist(res8))



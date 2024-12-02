####day2
library(tidyverse)
###Just Part 1 today

data <- readLines('adventofcode/day2_data.txt')
data_s <- str_split(data, ' ')

data_num <- lapply(data_s, as.numeric)

##For each vector need to check is it's strictly descending or ascending
#Difference between the elements next to each other

n_cor_vec <- c()
diff <- vector(mode = "list", length = 1000)


for(i in 1:length(data_num)){
  if(identical(sort(data_num[[i]]), data_num[[i]]) | identical(sort(data_num[[i]], decreasing = TRUE), data_num[[i]])){
    for(j in 2:length(data_num[[i]])-1){
      if(abs(data_num[[i]][j]-data_num[[i]][j+1])>=1 & abs(data_num[[i]][j]-data_num[[i]][j+1])<=3){
        diff[[i]][j] <- 0} else {diff[[i]][j] <- 1}
j = j+1
    }
    if(sum(diff[[i]])==0){
      n_cor_vec[i] <- TRUE
    } else{n_cor_vec[i] <- FALSE}
  }
  else{n_cor_vec[i] <- FALSE}
}
sum(n_cor_vec)




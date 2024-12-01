library(tidyverse)
###Part 1

lists <- read.table('numbers.txt', sep = " ")

lists <- lists %>% select(V1, V4)

lists <- lists %>% arrange(V1)

numb1 <- lists$V1

lists2 <- lists %>% arrange(V4)

numb2 <- lists2$V4

comb_dat <- data.frame( numb1, numb2)

comb_dat <- comb_dat %>% mutate(diff =abs(numb1-numb2))
sum(comb_dat$diff)


###part 2

###For each value of V1 match it calculate how many times it appears in V4
###Multiply 

numb1[1]==numb2
sim_vector <- c()

for(i in 1:length(numb1)){
  match <- sum(numb1[i]==numb2)
  sim <- match*numb1[i]
  sim_vector <- c(sim_vector, sim)
  i = i+1
}

sum(sim_vector)

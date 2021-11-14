library(tidyverse)

stepsDataSmall4 <- read.csv("data/steps.csv")
stepsDataSmall4 <- stepsDataSmall4 %>%
  filter(Student.ID < 500 & Student.ID >= 400)
varNamesSmall4 = names(stepsDataSmall4)
stepsDataPredSmall4 <- tibble(Student.ID = integer(), date = character(), time = character(), steps = integer())
for(i in 3:98) {
  for(j in 1:3100) {
    stepsDataPredSmall4 <- stepsDataPredSmall4 %>% 
      add_row(Student.ID = stepsDataSmall4[j,1],
              date = stepsDataSmall4[j,2],
              time = varNamesSmall4[i],
              steps = stepsDataSmall4[j,i])
  }
}
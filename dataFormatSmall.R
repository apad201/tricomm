library(tidyverse)

stepsDataSmall2 <- read.csv("data/steps.csv")
stepsDataSmall2 <- stepsDataSmall2 %>%
  filter(Student.ID < 300 & Student.ID >= 200)
varNamesSmall2 = names(stepsDataSmall2)
stepsDataPredSmall2 <- tibble(Student.ID = integer(), date = character(), time = character(), steps = integer())
for(i in 3:98) {
  for(j in 1:3100) {
    stepsDataPredSmall2 <- stepsDataPredSmall2 %>% 
      add_row(Student.ID = stepsDataSmall2[j,1],
              date = stepsDataSmall2[j,2],
              time = varNamesSmall2[i],
              steps = stepsDataSmall2[j,i])
  }
}
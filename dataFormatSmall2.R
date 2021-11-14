library(tidyverse)

stepsDataSmall3 <- read.csv("data/steps.csv")
stepsDataSmall3 <- stepsDataSmall3 %>%
  filter(Student.ID < 400 & Student.ID >= 300)
varNamesSmall3 = names(stepsDataSmall3)
stepsDataPredSmall3 <- tibble(Student.ID = integer(), date = character(), time = character(), steps = integer())
for(i in 3:98) {
  for(j in 1:3100) {
    stepsDataPredSmall3 <- stepsDataPredSmall3 %>% 
      add_row(Student.ID = stepsDataSmall3[j,1],
              date = stepsDataSmall3[j,2],
              time = varNamesSmall3[i],
              steps = stepsDataSmall3[j,i])
  }
}
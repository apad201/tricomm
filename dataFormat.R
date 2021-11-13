library(tidyverse)

stepsData <- read.csv("data/steps.csv")
varNames = names(stepsData)
stepsDataPred <- tibble(Student.ID = integer(), date = character(), time = character(), steps = integer())
for(i in 3:98) {
  for(j in 1:12400) {
    stepsDataPred <- stepsDataPred %>% 
      add_row(Student.ID = stepsData[j,1],
              date = stepsData[j,2],
              time = varNames[i],
              steps = stepsData[j,i])
  }
}
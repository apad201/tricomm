library(tidyverse)

stepsPredMerged <- stepsPredMerged %>%
  mutate(predSmT = predSm)
for(id in 100:499) {
  for(date in 1:31) {
    for(t in 0:95) {
      flag = FALSE
      if(!flag & t >= 17 & t < 71) {
        if(stepsPredMerged[[2976*(id-100) + 96*(date-1) + t + 1, 9]] == 0 & stepsPredMerged[[2976*(id-100) + 96*(date-1) + t+2,9]] == 0) {
          flag = TRUE
        }
      }
      if(t >= 71) {
        flag = FALSE
      }
      if(flag) {
        stepsPredMerged[[2976*(id-100) + 96*(date-1) + t + 1, 10]] <- 0
      }
    }
  }
}
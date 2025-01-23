library(tidytuesdayR)
library(tidyverse)

tuesdata <- tidytuesdayR::tt_load(2025, week = 4)

water_insecurity_2022 <- tuesdata$water_insecurity_2022
water_insecurity_2023 <- tuesdata$water_insecurity_2023


## For 2023, how was Ohio's % lacking plumbing compare to national avg?


#step 1
## create a column for state

water23State <- water_insecurity_2023 %>% 
  mutate(state = str_extract(name, "\\b\\w+$")) %>% 
  mutate(group_col = str_replace(state, "^(?!Ohio$).*","National"))

water23State %>% 
  t.test(percent_lacking_plumbing ~ group_col, data=.)


ggplot(data = water23State, aes(y=percent_lacking_plumbing,x=group_col))+
  geom_boxplot()+
  geom_errorbar(stat = 'summary')
  

midwest_states = c("New York","Ohio","Michigan","Wisonsin","Minnesota")

midwestStates <- water_insecurity_2023 %>% 
  mutate(state = str_extract(name, "\\b\\w+$")) %>% 
  filter(state %in% midwest_states) %>% 
  mutate(group_col = str_replace(state, "^(?!Ohio$).*","midwest")) %>% 
  t.test(percent_lacking_plumbing ~ group_col,data=.)

midwestOutput <- capture.output(print(midwestStates))

writeLines(midwestOutput, con = file("images/midwestWaterInsecurityT_TestResult.txt"))


library(tidyverse)
source("Themeset.R")



plotA <- ggplot(data = mtcars,
       aes(x=mpg,
           y=hp,
           size=wt))+
  geom_point()+
  ggtitle("MPG as HP Increases")+
  coord_flip()+
  theme_auditor

ggsave(filename = "images/MPG HP and WT Plot.png",plot = plotA)


linMod1 <- lm(data = mtcars, mpg~hp+wt)

summary(linMod1)

library(stargazer)

stargazer(linMod1,type = "text",out = "images/linmod1.text")


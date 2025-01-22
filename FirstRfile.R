library(tidyverse)

plotA <- ggplot(data = mtcars,
       aes(x=mpg,
           y=hp,
           size=wt))+
  geom_point()+
  theme_bw()+
  ggtitle("MPG as HP Increases")+
  coord_flip()

ggsave(filename = "images/MPG HP and WT Plot.png",plot = plotA)


linMod1 <- lm(data = mtcars, mpg~hp+wt)

summary(linMod1)

library(stargazer)

stargazer(linMod1,out = "images/linmod1.html")


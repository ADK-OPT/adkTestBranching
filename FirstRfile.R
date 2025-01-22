library(tidyverse)

ggplot(data = mtcars,
       aes(x=mpg,
           y=hp,
           size=wt))+
  geom_point()+
  theme_bw()+
  coord_flip()


linMod1 <- lm(data = mtcars, mpg~hp+wt)

summary(linMod1)
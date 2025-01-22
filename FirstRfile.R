library(tidyverse)

ggplot(data = mtcars,
       aes(x=mpg,
           y=hp,
           size=wt))+
  geom_point()+
  theme_bw()+
  coord_flip()
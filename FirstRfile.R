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
linMod2 <- lm(data = mtcars, drat~hp+wt)

summary(linMod1)

library(stargazer)

stargazer(linMod1,linMod2,type = "text",out = "images/linmod1.text")

library(cowplot)

plotc <-ggplot(data = mtcars, aes(x=mpg,y=wt))+
  geom_point()

plotd <- ggplot(data = mtcars, aes(x=drat,y=wt))+
  geom_point()

plotE<-plot_grid(plotc,plotd,labels = c("A","B"))

ggsave2(filename = "images/plotE.png",plot = plotE)











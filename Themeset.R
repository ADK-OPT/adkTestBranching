library(tidyverse)


theme_auditor <- theme_minimal() +
        theme(panel.grid = element_blank(),
        panel.border = element_blank(),
        axis.text.y = element_text(color = "black"),
        axis.text.x = element_text(color = "black"),
        axis.title = element_text(color = "black"),
        axis.line = element_line(color = "#A9A9A9", size = .75, lineend = "square"),
        text = element_text(size = 12, family = "serif"),
        plot.title = element_text(size = 15, family = "Century Gothic"),
        plot.title.position = "plot",
        plot.caption = element_text(hjust = 0, size = 10, color = "#808080"),
        plot.caption.position = "plot",
        plot.margin = margin(.5,1,.5,.5, unit = "cm"),
        legend.position = "top",
        legend.direction = "horizontal",
        legend.justification = "center",
        legend.title = element_blank(),
        axis.ticks = element_blank(),
        axis.ticks.length = unit(1, "mm"))

theme_set(theme_auditor)
        
library(tidyverse)
#install.packages('svglite')

renewal <- read_tsv("data/data.tsv")
names(renewal) <- make.names(names(renewal))
renewal <- mutate(renewal,
                  Events = factor(Notice),
                  Lead.Time = as.integer(Begin - Notice))

ggplot(renewal, aes(x = Events)) +
    geom_linerange(mapping = aes(ymin = Begin,
                                 ymax = End,
                                 linetype = " "),
                   size = 6,
                   color = "gray40") +
    geom_point(aes(y = Notice,
                   shape = ""),
               size = 2.5) +
    geom_linerange(mapping = aes(ymin = Notice,
                                 ymax = Begin,
                                 size = "")) +
    scale_shape("Notice",
                guide = guide_legend(order = 1)) +
    scale_size_discrete("Lead time",
                        guide = guide_legend(order = 2)) +
    scale_linetype("Duration",
                   guide = guide_legend(order = 3)) +
    coord_flip() +
    theme_light() +
    theme(legend.position = "none",
	  axis.title.x=element_blank(),
	  axis.title.y=element_blank(),
	  axis.text.y=element_blank(),
	  axis.ticks.y=element_blank(),
	  )

ggsave(path = "results", filename = "figure.png", width = 7, height = 3)
#ggsave(path = "results", filename = "figure.svg", width = 7, height = 3)

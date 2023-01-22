library(tidyverse)
load("C:/Users/Rodrigo/projects/murders/rda/murders.rda")
murders %>% mutate(abb=reorder(abb,rate)) %>% 
          ggplot(aes(abb,rate)) + 
          geom_bar(width=0.5,stat="identity",color="black") +
          coord_flip()
ggsave("C:/Users/Rodrigo/projects/murders/figs/barplot.png")
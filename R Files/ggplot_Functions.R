install.packages("tidyverse")
library(tidyverse)
install.packages('ggplot2') 
library(ggplot2) 

install.packages('palmerpenguins')
library(palmerpenguins)
data(penguins)
View(penguins)
head(penguins)
glimpse(penguins)

ggplot(data = penguins)
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +  geom_point()
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm))

?geom_point
?geom_bar

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + 
  geom_bar(mapping = aes(x = flipper_length_mm))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))+
  facet_wrap(~species)

ggsave("Penguin_species.png")

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, colour=species))+
  facet_wrap(~species)

ggsave("Colour_Penguin_Graph.pdf")

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))+
  facet_grid(sex~species)

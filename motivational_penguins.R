library(tidyverse)
library(palmerpenguins)

#Summarize data
head(penguins)

#Filter data
nrow(penguins)
penguins_filtered <- penguins %>% 
  filter(!is.na(body_mass_g) & !is.na(island) & !is.na(species))
nrow(penguins_filtered)

#Plot body mass by island
ggplot(penguins_filtered, aes(x = island, y = body_mass_g)) + 
  geom_boxplot() + 
  labs(
    title = "Penguin Body Mass Across Different Islands",
    x = "Island",
    y = "Body Mass (g)"
  )

#Plot body mass by species
ggplot(penguins_filtered, aes(x = species, y = body_mass_g)) + 
  geom_boxplot() + 
  labs(
    title = "Penguin Body Mass Across Different Species",
    x = "Species",
    y = "Body Mass (g)"
  )

#Plot species by island
ggplot(penguins_filtered, aes(x = island, fill = species)) +
  geom_bar(position = "dodge") +
  labs(
    title = "Distribution of Penguin Species Across Islands",
    x = "Island",
    y = "Count",
    fill = "Species"
  )

#Plot body mass by island & species
ggplot(penguins_filtered, aes(x = island, y = body_mass_g, fill = species)) +
  geom_boxplot() +
  labs(
    title = "Body Mass of Penguin Species Across Islands",
    x = "Island",
    y = "Body Mass (g)",
    fill = "Species"
  )
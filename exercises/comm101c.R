library(palmerpenguins)
library(ggplot2)
ggplot2

# Make the following changes to this basic boxplot.
# 1) Change the grey background to white
# 2) Clean up the axis labels
# 3) Make the color vary by island
# 4) Choose a color palette that you enjoy!

plot_colors <-c("orange", "yellow","darkblue","maroon")
ggplot(penguins, aes(island, body_mass_g, color=island)) +
  geom_boxplot() +
  theme_bw() +
  labs(x="Island",
       y="Body mass") +
  scale_color_manual(values =plot_colors)

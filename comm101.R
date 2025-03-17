library(marinecs100b)
woa_sal
library(ggplot2)
# Distributions of continuous variables -----------------------------------

# P1 What type of visualization is appropriate for a single continuous variable?
#histogram

# P2 What type of visualization is appropriate for a continuous variable across
# categorical variables?
#boxplot

# P3 Use ggplot to visualize the distribution of sea surface salinity. Save your
# figure as “comm101p3.png”.

ggplot(woa_sal, aes(salinity)) +
  geom_histogram()
ggsave("comm101p3.png")

# P4 Use ggplot to visualize the distribution of sea surface salinity by ocean
# basin. Save your figure as “comm101p4.png”.

ggplot(woa_sal, aes(x=ocean, y=salinity)) +
  geom_boxplot()
ggsave("comm101p4.png")
colnames(woa_sal)

# P5 Interpret your figures from P3 and P4. What patterns do you notice?
#In both graphs salinity is in between 30 and 40. The mediterranain region has
#the highest salinity.

# P6 Critique your figures from P3 and P4. What changes would highlight the
# patterns you interpreted in P5? You don’t need to write code for these
# changes, just describe them verbally.
#I think color coding would help emphasize the changes and make the graph easier
#to read at a glance.

# Relationships between continuous variables ------------------------------

# P7 Visualize the relationship between salinity and latitude by ocean basin.
ggplot(woa_sal, aes(x=latitude, y=salinity, color=ocean)) +
  geom_point()

# P8 Edit your figure from P7 to improve its interpretability in at least one of
# the following categories: visually differentiating the oceans, appropriateness
# of the labels, or use of negative space. Save this figure as “comm101p8.png”.
p <- ggplot(woa_sal, aes(x = latitude, y = salinity, color = ocean)) +
  geom_point() +
  theme_bw() +
  theme(legend.position.inside = c(0.99, 0.01),
        legend.justification = c(1, 0)) +
  labs(x = "Latitude",
       y = "Salinity",
       color = "Ocean")

ggsave("comm101p8.png", plot = p, width = 7, height = 5, dpi = 300)


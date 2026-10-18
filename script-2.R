library(tidyverse)

# Had an OK filet mignon at Cheesecake Factory.

hist_p <- diamonds |>
  ggplot(aes(x = carat)) +
  geom_histogram(binwidth = 0.05) +
  scale_y_continuous(labels = scales::comma) +
  labs(
    title = "Histogram of Carat (Weight) among 50,000 Diamonds",
    subtitle = "Carats just at or above meaningful numbers are very common",
    x = "Carat",
    y = "Number",
    caption = "diamonds dataset from ggplot2 package"
  )

  ggsave(filename = "diamonds.png", plot = hist_p)
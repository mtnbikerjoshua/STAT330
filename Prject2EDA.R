library(tidyverse)

point_matrix <- function(data) {
  par(pty = "s", las = 1)
  pairs(data, pch = 19, lower.panel = NULL)
}

life_expect <- read_csv("lifeexpect.csv") %>%
  select(!Status)
point_matrix(life_expect)

library(tidyverse)
library(dslabs)
data(stars)
options(digits = 3)   # report 3 significant digits

head(stars)

#Question 1)
mean(stars$magnitude)
sd(stars$magnitude)

#Question 2)
stars %>% ggplot(aes(magnitude)) + geom_density()

#Question 3)
stars %>% ggplot(aes(temp)) + geom_histogram()

#Question 4)
stars %>% ggplot(aes(temp, magnitude)) + geom_point()

#Question 5)
stars %>% ggplot(aes(temp, magnitude)) + geom_point() + 
  scale_y_reverse() + scale_x_continuous(trans = "log10") +
  scale_x_reverse()

#Question 6)
4

#Question 7)
giant = magnitude < 1; temp < 15000

#Question 8)
stars %>% ggplot(aes(temp, magnitude, color = type)) + geom_point(size = 3) + 
  scale_y_reverse() + scale_x_continuous(trans = "log10") +
  scale_x_reverse()
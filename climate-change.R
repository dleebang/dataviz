library(tidyverse)
library(dslabs)
data(temp_carbon)
data(greenhouse_gases)
data(historic_co2)

# Question 1)
head(temp_carbon)

temp_carbon %>% .$year %>% max()

temp_carbon %>%
  filter(!is.na(carbon_emissions)) %>%
  pull(year) %>%
  max()

temp_carbon %>%
  filter(!is.na(carbon_emissions)) %>%
  .$year %>%
  max()

temp_carbon %>%
  filter(!is.na(carbon_emissions)) %>%
  select(year) %>%
  max()

temp_carbon %>%
  filter(!is.na(carbon_emissions)) %>%
  max(.$year)


#Question 2)
temp_carbon %>%
  filter(!is.na(carbon_emissions)) %>%
  pull(year) %>%
  max()

temp_carbon %>%
  filter(!is.na(carbon_emissions)) %>%
  pull(year) %>%
  min()

temp_carbon %>%
  filter(year=="2014") %>%
  pull(carbon_emissions) %>%
  max()

temp_carbon %>%
  filter(year=="1751") %>%
  pull(carbon_emissions) %>%
  max()

9855 / 3


#Question 3)
temp_carbon %>%
  filter(!is.na(temp_anomaly)) %>%
  pull(year) %>%
  min()

temp_carbon %>%
  filter(!is.na(temp_anomaly)) %>%
  pull(year) %>%
  max()

temp_carbon %>%
  filter(year == "1880") %>%
  pull(temp_anomaly)

temp_carbon %>%
  filter(year == "2018") %>%
  pull(temp_anomaly)

0.82 - (-0.11)


#Question 4)
p <- temp_carbon %>% filter(!is.na(temp_anomaly)) %>%
  ggplot(aes(year, temp_anomaly)) + geom_line()

p <- p + geom_vline(aes(xintercept = 0), col = "blue")

p <- p + geom_hline(aes(y = 0), col = "blue")

p <- p + geom_hline(aes(yintercept = 0, col = "blue"))

p <- p + geom_hline(aes(yintercept = 0), col = "blue")


#Question 5)
p <- p + ylab("Temperature anomaly (degrees C)") +
  ggtitle("Temperature anomaly relative to 20th century mean, 1880-2018") +
  geom_text(aes(x = 2000, y = 0.05, label = "20th century mean"), col = "blue")


#Question 6)
1943
1977
1995

#Question 7)
p + geom_line(aes(year, ocean_anomaly), col = "red") +
  geom_line(aes(year, land_anomaly), col = "green")

#Question 8)
head(greenhouse_gases)

greenhouse_gases %>%
  ggplot(aes(year, concentration)) +
  geom_line() +
  facet_grid(gas~., scales = "free") +
  geom_vline(xintercept 
             = 1850) +
  ylab("Concentration (ch4/n2o ppb, co2 ppm)") +
  ggtitle("Atmospheric greenhouse gas concentration by year, 0-2000")


#Question 10)
head(temp_carbon)
temp_carbon %>% ggplot(aes(year, carbon_emissions)) +
  geom_line() + geom_vline(xintercept = 1850)


#Question 11)
head(historic_co2)
co2_time <- historic_co2 %>% ggplot(aes(year, co2, color = source)) +
  geom_line(size = 1)


#Question 12)
co2_time + xlim(-800000, -775000)
co2_time + xlim(-375000, -330000)
co2_time + xlim(-140000, -120000)
co2_time + xlim(-3000, 2018)

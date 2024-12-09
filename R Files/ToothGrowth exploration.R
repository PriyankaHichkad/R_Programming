data("ToothGrowth")
View(ToothGrowth)
install.packages("dplyr")

filtered_tg <- filter(ToothGrowth, dose == 0.5)

arrange(filtered_tg, len)

arrange(filter(ToothGrowth, dose == 0.5), len)

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len)

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_len = mean(len, na.rm = T), .group ="drop")
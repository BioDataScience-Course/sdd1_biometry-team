#Etude de la biométrie humaine

#packages
SciViews::R
library(skimr)
library(visdat)

#import data

#biometry_2018 <- read$csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vQoVtSWbENWzxbALxD0qyNDqxV4uSYqzLCtJgcNGE7ciT6nkWOjA9b6dMBHaSUY8Nw5f-mSpUEeN-3S/pub?output=csv ")

biometry_2018 <- readr::read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vQoVtSWbENWzxbALxD0qyNDqxV4uSYqzLCtJgcNGE7ciT6nkWOjA9b6dMBHaSUY8Nw5f-mSpUEeN-3S/pub?output=csv", locale = locale(decimal_mark = ","))
write(biometry_2018, file = "data/biometry_2018.rds", type = "rds", compress = "xz")

View(biometry_2018)
summary(biometry_2018)
head(biometry_2018)

vis_dat(biometry_2018)

#filter()

 biometry_2018_1<-filter(biometry_2018, taille != "NA")
vis_dat(biometry_2018_1)

biometry_2018_1$genre <- factor(biometry_2018_1$genre, levels = c("h", "f"))
biometry_2018_1$hainaut <- factor(biometry_2018_1$hainaut, levels = c("o", "n"))





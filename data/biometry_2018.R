biometry_2018 <- readr::read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vQoVtSWbENWzxbALxD0qyNDqxV4uSYqzLCtJgcNGE7ciT6nkWOjA9b6dMBHaSUY8Nw5f-mSpUEeN-3S/pub?output=csv", locale = locale(decimal_mark = ","))

write(biometry_2018, file = "data/biometry_2018.rds", type = "rds")


biometry$acti_profession <- as.factor(biomert$acti_profession)

biometry <- mutate(biometry,
                   imc_schedule = case_when(
                     imc < 18.5 ~ "sous_poids",
                     imc >= 18.5 & imc < 25 ~ "poids_normal",
                     imc >= 25 & imc < 30 ~ "surpoids",
                     imc >= 30 ~ "obésité",
                     TRUE ~ as.character(imc)
                   ))

biometry %>.%
filter(., ! is.na( (imc_schedule)) -> biometry

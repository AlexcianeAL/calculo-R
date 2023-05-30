#Dplyr

library(dplyr)

facebook <- read.table("https://raw.githubusercontent.com/hugoavmedeiros/cd_com_r/master/bases_originais/dataset_Facebook.csv", sep=";", header = T)

## sumários

reframe(facebook,like)

# Subset Variables (Columns)

dplyr:: select(facebook, 1, 2, 3, 6)

# Syntax - utils::View (facebook)

utils::View (facebook)

dplyr::glimpse(facebook)

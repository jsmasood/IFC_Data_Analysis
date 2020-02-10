library(readr)
library(dplyr)

setwd("~/Documents/CGD/IFC Geo")

files = list.files(path="Disclosure", pattern="*.csv", full.names=TRUE)

df_ifc <- sapply(files, read_csv, simplify=FALSE) %>% 
  bind_rows(.id = "id")

for (i in 0:18) {
  assign(paste0("spi_", i), read_csv(paste("Disclosure/spi (",i,").csv", sep = ""))) 
  #<- read_csv(paste("DIsclosure/spi (",i,").csv", sep = ""))
}



# file_names <- dir(path="DIsclosure")
# df_ifc <- do.call(rbind,lapply(files,read.csv))
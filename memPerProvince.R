library("tmap")
library("tmaptools")
library("readxl")
data <- read_xlsx("abxmem.xlsx")
head(data)
vnshapefile <- "Provinces.shp"
if (file.exists(vnshapefile) == TRUE){
  vngeo <- read_shape(file = vnshapefile, as.sf = TRUE)
  # qtm(vngeo)
  vnmap <- append_data(vngeo, data, key.shp = "VARNAME_2", key.data ="province")
  qtm(vnmap, "mem")
}else{
  print("Data file does not exist")
}

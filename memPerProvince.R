library("tmap")
library("tmaptools")
library("openxlsx")
data <- read.xlsx("resources/abxmem.xlsx")
head(data)
vnshapefile <- "resources/Provinces.shp"
if (file.exists(vnshapefile) == TRUE){
  vngeo <- read_shape(file = vnshapefile, as.sf = TRUE)
  vnmap <- append_data(vngeo, data, key.shp = "VARNAME_2", key.data ="province")
  qtm(vnmap, "mem")
}else{
  print("Data file does not exist")
}


# for fun
library("beepr")
beep("random")
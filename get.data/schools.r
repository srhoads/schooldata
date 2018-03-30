library(foreign)
library(sas7bdat)
library(haven)
library(tidyverse)
library(readxl)
# residualized change approach
# ==================================================================
pss9900 <- read.spss("~/downloads/PSS9900_PU.SAV") 
save(pss9900, file = "pss9900_pu.rda")

pss0102 <- read.spss("~/downloads/PSS0102_PU.SAV") 
save(pss0102, file = "pss0102_pu.rda")

pss0708 <- read.spss("~/downloads/PSS0708_PU.sav")
save(pss0708, file = "pss0708_pu.rda")

pss0910 <- read.spss("~/downloads/PSS0910_PU.SAV")
save(pss0910_pu, file = "pss0910_pu.rda")

pss1112 <- read.spss("~/downloads/pss1112_pu.sav")
save(pss1112_pu, file = "pss1112_pu.rda")

pss1314 <- read.spss("~/downloads/pss1314_pu.sav")
save(pss1314_pu, file = "pss1314_pu.rda")

pss1516 <- read.spss("~/downloads/pss1516_pu.sav")
save(pss1516_pu, file = "pss1516_pu.rda")


# ==================================================================


# the last column is always named after the school year

# ccd public schools

# 1999-2000
sc991bai <- read_sas("~/downloads/sc991bai.sas7bdat")
sc991bkn <- read_sas("~/downloads/sc991bkn.sas7bdat")
sc991bow <- read_sas("~/downloads/sc991bow.sas7bdat")

sc991 <- list()
sc991[[1]] <- sc991bai
sc991[[2]] <- sc991bkn
sc991[[3]] <- sc991bow

save(sc991, file = "sc991.1999.00.rda")



# 2000-2001
sc001aai <- read_sas("~/downloads/sc001aai.sas7bdat")
sc001akn <- read_sas("~/downloads/sc001akn.sas7bdat")
sc001aow <- read_sas("~/downloads/sc001aow.sas7bdat")

sc001 <- list()
sc001[[1]] <- sc001aai
sc001[[2]] <- sc001akn
sc001[[3]] <- sc001aow

save(sc001, file = "sc001.2000.01.rda")


# 2007-2008
sc071b <- read_sas("~/downloads/sc071b.sas7bdat")
save(sc071b, file = "sc071b.2007.08.rda")

# 2008-2009
sc081b <- read_sas("~/downloads/sc081b.sas7bdat")
save(sc081b, file = "sc081b.2008.09.rda")

# 2009-2010
sc092a <- read_sas("~/downloads/sc092a.sas7bdat")
save(sc092a, file = "sc092a.2009.10.rda")

# 2010-2011
sc102a <- read_sas("~/downloads/sc102a.sas7bdat")
save(sc102a, file = "sc102a.2010.11.rda")

# 2011-2012
sc111a_supp <- read_sas("~/downloads/sc111a_supp.sas7bdat")
save(sc111a_supp, file = "sc111a_supp.2011.12.rda")

# 2012-2013
sc122a <- read_sas("~/downloads/sc122a.sas7bdat")
save(sc122a, file = "sc122a.2012.13.rda")

# 2013-2014
sc132a <- read_sas("~/downloads/sc132a.sas7bdat")
save(sc132a, file = "sc132a.2013.14.rda")

# 2014-2015
# EDGE_GEOIDS_201415_PUBLIC_SCHOOL_xlsx.xlsx

ccd_sch_029_1415_w_0216161a <- read_sas("~/downloads/ccd_sch_029_1415_w_0216161a.sas7bdat")
ccd_sch_052_1415_w_0216161a <- read_sas("~/downloads/ccd_sch_052_1415_w_0216161a.sas7bdat")
ccd_sch_059_1415_w_0216161a <- read_sas("~/downloads/ccd_sch_059_1415_w_0216161a.sas7bdat")
ccd_sch_129_1415_w_0216161a <- read_sas("~/downloads/ccd_sch_129_1415_w_0216161a.sas7bdat")
ccd_sch_033_1415_w_0216161a <- read_sas("~/downloads/ccd_sch_033_1415_w_0216161a.sas7bdat")

ccd_sch_1415 <- list()
ccd_sch_1415[[1]] <- ccd_sch_029_1415_w_0216161a
ccd_sch_1415[[2]] <- ccd_sch_052_1415_w_0216161a
ccd_sch_1415[[3]] <- ccd_sch_059_1415_w_0216161a
ccd_sch_1415[[4]] <- ccd_sch_129_1415_w_0216161a
ccd_sch_1415[[5]] <- ccd_sch_033_1415_w_0216161a

save(ccd_sch_1415, file = "ccd_sch_1415.rda")



# install.packages("prophet")
# fxn for reading XLS multi-tab file ####
read_excel_allsheets <- function(filename) { # making fxn to get sheets from data
  #---
  # takes an exel file and reads in all the sheets; returns a list
  #---
  sheets <- readxl::excel_sheets(filename)
  x <- lapply(sheets, function(X) readxl::read_excel(filename, sheet = X))
  names(x) <- sheets
  x
}

# load data ####
file_loc <- "~/Downloads/"
# file_loc <- "~/Documents/"
file <- paste0(file_loc, "EDGE_GEOIDS_201415_PUBLIC_SCHOOL_xlsx.xlsx") # making data path
data <- read_excel_allsheets(file) # loading data (all sheets) # makes a list of dfs by "yyyy year charges by state"
data$CCD14_SCH_GEOLOAD_160622
CCD14_SCH_GEOLOAD_160622 <- data$CCD14_SCH_GEOLOAD_160622
save(CCD14_SCH_GEOLOAD_160622, file = "EDGE_GEOIDS_201415_PUBLIC_SCHOOL.rda")



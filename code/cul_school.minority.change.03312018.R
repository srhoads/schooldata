# write.csv(cul_pubpriv.99.00.01.09.10.11, "cul_pubpriv.99.00.01.09.10.11.csv")
cul2016 <- cul <- read.csv("~/desktop/cul2016_03282018.csv")


cul_pubpriv.99.00.01.09.10.11 <- read.csv("cul_pubpriv.99.00.01.09.10.11.csv")
cul_pubpriv.99.00.01.09.10.11
names(sch <- cul_pubpriv.99.00.01.09.10.11)


hs.minority <- read.csv("~/downloads/cul2016_school.minority.change.csv")


cul2016_03292018 <- left_join(cul2016, cul_pubpriv.99.00.01.09.10.11)

cul2016_03302018 <- left_join(cul2016_03292018, hs.minority)


# write.csv(cul2016_03302018, "cul2016_03302018.csv") HAS ALL SCHOOL VARIABLES AND MINORITY CHANGE IN SCHOOL

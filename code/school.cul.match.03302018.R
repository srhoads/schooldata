library(tidyverse)
cul2016 <- cul <- read.csv("~/desktop/cul2016_03282018.csv")
(cul2016 <- cul[ , -(1:2) ])
cul2016$nces.id.prefix <- as.character(cul2016$nces.id.prefix)

pub99.url <- url("https://github.com/srhoads/schooldata/blob/master/publicschools/ccd%20raw%20data/sc991.1999.00.rda?raw=true")

pub99.load <- get(load(pub99.url))

pub99a <- data.frame(pub99[[1]])
pub99b <- data.frame(pub99[[2]])
pub99c <- data.frame(pub99[[3]])

pub99.load.2 <- plyr::ldply(pub99.load, data.frame)
View(names(pub99))
names(pub99 <- pub99.full <- pub99.df <- data.frame(pub99.load.2))
pub99 <- pub99.df <- pub99.full %>% select(NCESSCH:TOTGRD99)
(names(pub99) <- paste0(names(pub99.df), ".pub.99"))
head(pub99$nces.id.prefix <- as.character(paste0("num_", pub99$NCESSCH.pub.99)))






# cul combining with public schools 99
##
cul.pub99 <- left_join(cul2016, pub99)
##







# 2010

pub09.url <- url("https://github.com/srhoads/schooldata/blob/master/publicschools/ccd%20raw%20data/sc092a.2009.10.rda?raw=true")

pub09.load <- pub09 <- pub09.df <- data.frame(get(load(pub09.url)))
# pub09.df <- plyr::ldply(pub09, data.frame)
names(pub09 <- pub09.full <- pub09.df <- data.frame(pub09.load))
pub09.df <- pub09 <- pub09.full
names(pub09) <- paste0(names(pub09.df), ".pub.09")
head(pub09$nces.id.prefix <- as.character(paste0("num_", pub09$NCESSCH.pub.09)))




# use in merge












# private

#1999-2000
priv99.url <- url("https://github.com/srhoads/schooldata/blob/master/privateschools/pss%20raw%20data/pss9900_pu.rda?raw=true")
priv99.load <- data.frame(get(load(priv99.url)))
names(priv99 <- priv99.full <- priv99.df <- data.frame(priv99.load))
priv99.df <- priv99 <- priv99.full[ , c(1:9, 120:145)]
names(priv99) <- paste0(names(priv99.df), ".priv.99")

head(priv99$nces.id.prefix <- as.character(paste0("num_", priv99$SPIN.priv.99)))

names(priv99)





#2009-2010
priv09.url <- url("https://github.com/srhoads/schooldata/blob/master/privateschools/pss%20raw%20data/pss0910_pu.rda?raw=true")
priv09.load <- get(load(priv09.url))
names(priv09 <- priv09.full <- priv09.df <- data.frame(priv09.load))
names(priv09.full) <- toupper(names(priv09.full))
priv09.df <- priv09 <- priv09.full[ , c(1, 90, 198:231, 338:346)]
names(priv09) <- paste0(names(priv09.df), ".priv.09")
head(priv09$nces.id.prefix <- as.character(paste0("num_", priv09$PPIN.priv.09)))


names(cul2016)

cul.mini <- cul2016 %>% select(1:4, nces.id.prefix, hs, hsname.1)


culmini.pub99 <- left_join(cul.mini, pub99)
culmini.pub99.priv99 <- left_join(culmini.pub99, priv99)
culmini.pub99.priv99.pub09 <- left_join(culmini.pub99.priv99, pub09)
culmini.pub99.priv99.pub09.priv09 <- left_join(culmini.pub99.priv99.pub09, priv09)
dim(culmini.pub99.priv99.pub09.priv09)

write.csv(culmini.pub99.priv99.pub09.priv09, "culmini.pub99.priv99.pub09.priv09.csv")







cul.pubpriv99 <- left_join(cul.pub99, data.frame(priv99))
cul.pubpriv99.pub09 <- left_join(cul.pubpriv99, data.frame(pub09))
names(cul.pubpriv99)



names(cul.pubpriv99.races <- cul.pubpriv99 %>% select(1:5, TRACT, hscounty, state.abb,
                                                                  contains("nces", ignore.case = T),
                                                                  contains("black", ignore.case = T),
                                                                  contains("whit", ignore.case = T),
                                                                  contains("india", ignore.case = T),
                                                                  contains("asia", ignore.case = T),
                                                                  contains("hisp", ignore.case = T),
                                                                  contains("minor", ignore.case = T),
                                                                  contains("pacif", ignore.case = T),
                                                                  contains("alask", ignore.case = T),
                                                                  contains("hawa", ignore.case = T),
                                                                  contains("ameri", ignore.case = T),
                                                                  contains("member", ignore.case = T),
                                                                  contains("nativ", ignore.case = T),
                                                                  contains("minor", ignore.case = T),
                                                                  contains("numst", ignore.case = T)))


cul.pubpriv99.priv09 <- left_join(cul.pubpriv99.races, data.frame(priv09))

cul.pubpriv99.privpub09 <- left_join(cul.pubpriv99.priv09, data.frame(pub09))

names(cul.pubpriv99.privpub09.races <- cul.pubpriv99.privpub09 %>% select(1:5, TRACT, hscounty, state.abb,
                                                                                          contains("nces", ignore.case = T),
                                                                                          contains("black", ignore.case = T),
                                                                                          contains("whit", ignore.case = T),
                                                                                          contains("india", ignore.case = T),
                                                                                          contains("asia", ignore.case = T),
                                                                                          contains("hisp", ignore.case = T),
                                                                                          contains("minor", ignore.case = T),
                                                                                          contains("pacif", ignore.case = T),
                                                                                          contains("alask", ignore.case = T),
                                                                                          contains("hawa", ignore.case = T),
                                                                                          contains("ameri", ignore.case = T),
                                                                                          contains("member", ignore.case = T),
                                                                                          contains("nativ", ignore.case = T),
                                                                                          contains("minor", ignore.case = T),
                                                                                          contains("numst", ignore.case = T)))
head(cul.pubpriv99.privpub09.races)
# write.csv(cul.pubpriv99.privpub09.races, "cul.pubpriv99.privpub09.races.csv")
View(cul.pubpriv99.privpub09.races)





stuy <- priv09[grep("STUYVESANT HIGH", priv09), ]
stuy
pub09
pub99.df
class(priv09)
priv99
priv99[grep("ransom", priv99$SCHOOL), ]
View(priv09$pinst)
names(priv09)
View(priv09.abridged <- priv09[, c(198:232, 337:347)])
View(stuy <- priv09.abridged[grep("RANSOM", priv09.abridged$pinst), ])



priv99.search <- priv99
priv09.search <- priv09
priv99.search$name <- priv99$SCHOOL.99
priv09.search$name <- priv09$pinst.09
priv09.99 <- merge(priv99.search, priv09.search, all = T)


pub09.99 <- merge(pub99, pub09, all = T)



View(priv <- priv09.99[grep("RANSOM", priv09.99$name), ])
View(pub <- pub09[grep("KAMEHAMEHA", pub09$SCHNAM09.09), ])

# no data for 1999:
#### ransom everglades


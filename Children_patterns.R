###########################################################
# read in lables and frequencies
###########################################################
library(confreq)
seizures <- c("present","present","absent","absent")
intelligence <- c("above","below","above","below")
Freq.d1 <- c(6,8,37,5)
d1 <- data.frame(seizures,intelligence,Freq=Freq.d1)
# R commands to prepare the data,
# compute and show the CFA results
class(d1) <- c("data.frame", "Pfreq")
d1
resd1 <- CFA(d1, form="~seizures + intelligence + seizures:intelligence",bintest=FALSE)
resd1 <- CFA(d1, form="null",bintest=FALSE)

resd1 <- CFA(d1, form="~ seizures + intelligence",bintest=FALSE)

#summary(resd1, sorton="pat.",showall = TRUE)
summary(resd1, showall = TRUE)
# show design matrix
resd1$designmatrix

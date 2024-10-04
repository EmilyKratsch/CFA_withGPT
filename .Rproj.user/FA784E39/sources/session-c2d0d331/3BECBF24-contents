getwd()
# 
# 
#
cfa <- read.table("Children.csv", sep=";", header=TRUE, quote="\"")
cfa
# you need to load the R-package
library("confreq")
# data to patterned frequencies
# for R Version 4.0.2
cfa_new<-dat2fre(fre2dat(cfa,fact=TRUE))
# for older confreq versions
# cfa_new<-dat2fre(fre2dat(cfa))
cfa_new

# to start the function CFA
# the results are written into the object 'resd1'

resd1 <- CFA(cfa_new, form="~ Seizures + Birth + Intelligence")
resd1
# we get a nice tabulated printout through 'summary'
summary(resd1, sorton="pat.", holm=TRUE)

# Plotten der Signifikanzen nach approximierten Chiquadrat mit standard Farben ...

plot(resd1,type = "z.pChi")

# Plotten der Signifikanzen nach approximierten Chiquadrat mit eigenen Farben ...
plot(resd1,type = "z.pChi",fill = c("darkred","darkgreen","grey"))




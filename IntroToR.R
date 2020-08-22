## This is the R code used in the NRT retreat 2020
## Companion to IntroToR.Rmd

## Variables and Assignment

woof <- 4

goof <- 2 + 2

a.smashingly.long.variable.name <- sqrt(16)

another_long_variable_name <- 2*2

## Output (Print and Plot)

woof

#or equivalently

print(woof)


## External Data Entry
Ngc.dat<-read.csv(url("https://raw.githubusercontent.com/astrobayes/BMAD/master/data/Section_10p7/NB_GCs.csv"))
head(Ngc.dat)

foodat<-read.table(file = "~/Documents/foodata.txt")
head(foodat)

## Vectors in R

woof<-c(-34, 1.2, 3)
woof

alf<-seq(1,10)
alf

alf2<-seq(1,10,2)
alf2

### Vectorwise Functions and Operators
kate <- sqrt(alf)
kate
bri <- alf^2
kate*bri

#### Integer Indexing

alf[1]
willie <- alf[c(3, 5, 7)]
willie

alf[1] <- 17
alf[c(3, 5, 7)] <- 42
alf

#### Negative Integer Indexing

opie <- seq(1, 10)
opie
opie[seq(1, 10, 2)]
opie[- seq(2, 10, 2)]


#### Logical Vector Indexing

bee<-c(12, 42, 33, 42)
bee[bee != 42]

## Numercial Sumaries
head(Ngc.dat)
is.data.frame(Ngc.dat)

NGC<-Ngc.dat$N_GC
length(NGC)

NGC<-NGC[!is.na(NGC)]
length(NGC)
summary(NGC)

## Graphical Summaries

### Histograms

hist(NGC)

hist(NGC, xlim=c(0,20000))

hist(NGC, xlim=c(0,20000), main="New Title", ylab="")

hist(NGC, xlim=c(0,20000), main="", ylab="")
points(mean(NGC), 0, col="blue", pch=16, cex=2)
points(median(NGC), 0, col="red", pch=17, cex=2)

## Scatterplots
weight<-c(165,171,169,182,176,212,198,114,230,179)
height<-c(70,65,63,69,68,73,74,61,71,68)

plot(weight,height)  

plot(weight,height,xlab="Weight", ylab="Height")
title("Heights and Weights")
abline(48.7916,0.1081)
rug(weight, side=1)
rug(height, side=2)

##How to save a figure

pdf(file = "Rplot.pdf")
plot(weight,height,xlab="Weight", ylab="Height")
title("Heights and Weights")
abline(48.7916,0.1081)
dev.off()

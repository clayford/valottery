# Mega Millions
mm_url <- "https://www.valottery.com/download_numbers.aspx?game=15"
mm_data <- readLines(mm_url, warn = FALSE)

# Power Ball
pb_url <- "https://www.valottery.com/download_numbers.aspx?game=20"
pb_data <- readLines(pb_url, warn = FALSE)

# cash4life
c4l_url <-  "https://www.valottery.com/download_numbers.aspx?game=1065"
c4l_data <- readLines(c4l_url, warn=FALSE)

# $1,000,000 money ball
mmb_url <- "https://www.valottery.com/download_numbers.aspx?game=1060"
mmb_data <- readLines(mmb_url, warn=FALSE)

# Decades of Dollars (discontinued)
dd_url <- "https://www.valottery.com/download_numbers.aspx?game=25"
dd_data <- readLines(dd_url, warn = FALSE)

# Cash 5
c5_url <- "https://www.valottery.com/download_numbers.aspx?game=1030"
c5_data <- readLines(c5_url, warn=FALSE)

# Pick 4
p4_url <- "https://www.valottery.com/download_numbers.aspx?game=1040"
p4_data <- readLines(p4_url, warn=FALSE)

# Pick 3
p3_url <- "https://www.valottery.com/download_numbers.aspx?game=1050"
p3_data <- readLines(p3_url, warn=FALSE)

save(mm_data, pb_data, c4l_data, mmb_data, dd_data, c5_data, p4_data, p3_data, file="data-raw/rawData.Rda")

# explore
lapply(ls(pattern = "_data$"), function(x)head(get(x)))


# Mega Millions -----------------------------------------------------------
# October 22, 2013, format changed from 5/56 + 1/46 to the current 5/75 + 1/15 format

mega.mill <- mm_data[grepl(pattern = "^[0-9]",mm_data)]
mega.mill <- strsplit(mega.mill,split = ";")
mega.mill <- as.data.frame(do.call(what = rbind,args = mega.mill))

names(mega.mill) <- c("date","numbers","megaball")
mega.mill$date <- as.Date(as.character(mega.mill$date),format="%m/%d/%Y")
mega.mill$megaball <- as.numeric(sub(" Money Ball: | Mega Ball: ","",
                                 as.character(mega.mill$megaball)))
numbers <- do.call(rbind,strsplit(as.character(mega.mill$numbers),","))
numbers <- as.data.frame(apply(numbers,2,as.numeric))
mega.mill <- cbind(mega.mill,numbers)
mega.mill$numbers <- NULL
names(mega.mill)[3:7] <- c("N1","N2","N3","N4","N5")
rm(numbers)


mega.mill.1 <- mega.mill[mega.mill$date < "2013-10-22",]
# summary(mm_data_1$megaball)
# barplot(table(mm_data_1$megaball))
mega.mill.2 <- mega.mill[mega.mill$date >= "2013-10-22",]
# summary(mm_data_2$megaball)
# barplot(table(mm_data_2$megaball))

save(mega.mill.1, file="data/mega.mill.1.rdata")
save(mega.mill.2, file="data/mega.mill.2.rdata")

# examples?
# library(reshape2)
# dflot3 <- melt(dflot2,id.vars = c("date","megaball"),
#                variable.name = "draw",value.name = "number")
# dflot3 <- dflot3[order(dflot3$date),]
# rownames(dflot3) <- NULL
# # some analysis
# hist(dflot3$number)
# barplot(table(dflot3$number))
#
# dflot3_15 <- subset(dflot3,date > "2015-01-01")
#
#
#
# minNums <- with(dflot3_15, tapply(number, date, min))
# median(minNums)
# table(minNums)
# barplot(table(minNums),horiz = TRUE,las=1)
#
# maxNums <- with(dflot3_15, tapply(number, date, max))
# median(maxNums)
# table(maxNums)
# barplot(table(maxNums),horiz = TRUE,las=1)

# Powerball ---------------------------------------------------------------

power.ball <- pb_data[grepl(pattern = "^[0-9]",pb_data)]
power.ball <- strsplit(power.ball,split = ";")
power.ball <- as.data.frame(do.call(what = rbind,args = power.ball))

names(power.ball) <- c("date","numbers","powerball")
power.ball$date <- as.Date(as.character(power.ball$date),format="%m/%d/%Y")
power.ball$powerball <- as.numeric(sub("Powerball:","",
                                 as.character(power.ball$powerball)))
numbers <- do.call(rbind,strsplit(as.character(power.ball$numbers),","))
numbers <- as.data.frame(apply(numbers,2,as.numeric))
power.ball <- cbind(power.ball,numbers)
power.ball$numbers <- NULL
names(power.ball)[3:7] <- c("N1","N2","N3","N4","N5")

save(power.ball, file="data/power.ball.rdata")


# Cash 4 Life -------------------------------------------------------------

cash.4.life <- c4l_data[grepl(pattern = "^[0-9]",c4l_data)]
cash.4.life <- strsplit(cash.4.life,split = ";")
cash.4.life <- as.data.frame(do.call(what = rbind,args = cash.4.life))

names(cash.4.life) <- c("date","numbers","cashball")
cash.4.life$date <- as.Date(as.character(cash.4.life$date),format="%m/%d/%Y")
cash.4.life$cashball <- as.numeric(sub("Cash Ball:","",
                                       as.character(cash.4.life$cashball)))
numbers <- do.call(rbind,strsplit(as.character(cash.4.life$numbers),","))
numbers <- as.data.frame(apply(numbers,2,as.numeric))
cash.4.life <- cbind(cash.4.life,numbers)
cash.4.life$numbers <- NULL
names(cash.4.life)[3:7] <- c("N1","N2","N3","N4","N5")

save(cash.4.life, file="data/cash.4.life.rdata")


# $1,000,000 money ball ---------------------------------------------------

money.ball <- mmb_data[grepl(pattern = "^[0-9]",mmb_data)]
money.ball <- strsplit(money.ball,split = ";")
money.ball <- as.data.frame(do.call(what = rbind,args = money.ball))

names(money.ball) <- c("date","numbers","moneyball")
money.ball$date <- as.Date(as.character(money.ball$date),format="%m/%d/%Y")
money.ball$moneyball <- factor(sub(" Money Ball: ","",
                                       as.character(money.ball$moneyball)))
numbers <- do.call(rbind,strsplit(as.character(money.ball$numbers),","))
numbers <- as.data.frame(apply(numbers,2,as.numeric))
money.ball <- cbind(money.ball,numbers)
money.ball$numbers <- NULL
names(money.ball)[3:7] <- c("N1","N2","N3","N4","N5")

save(money.ball, file="data/money.ball.rdata")


# Decades of Dollars ------------------------------------------------------

decades.of.dollars <- dd_data[grepl(pattern = "^[0-9]",dd_data)]
decades.of.dollars <- strsplit(decades.of.dollars,split = ";")
decades.of.dollars <- as.data.frame(do.call(what = rbind,args = decades.of.dollars))

names(decades.of.dollars) <- c("date","numbers")
decades.of.dollars$date <- as.Date(as.character(decades.of.dollars$date),format="%m/%d/%Y")

numbers <- do.call(rbind,strsplit(as.character(decades.of.dollars$numbers),","))
numbers <- as.data.frame(apply(numbers,2,as.numeric))
decades.of.dollars <- cbind(decades.of.dollars,numbers)
decades.of.dollars$numbers <- NULL
names(decades.of.dollars)[2:7] <- c("N1","N2","N3","N4","N5","N6")

save(decades.of.dollars, file="data/decades.of.dollars.rdata")



# Cash 5 ------------------------------------------------------------------
# On April 11, 1999, Cash 5 switched to twice daily drawings
cash.5 <- c5_data[grepl(pattern = "^[0-9]",c5_data)]
cash.5 <- strsplit(cash.5,split = ";")
spt <- which(diff(sapply(cash.5,length))!=0)

cash.5.1xday <- cash.5[(spt+1):length(cash.5)]
cash.5.2xday <- cash.5[1:spt]

cash.5.1xday <- as.data.frame(do.call(what = rbind,args = cash.5.1xday))
cash.5.2xday <- as.data.frame(do.call(what = rbind,args = cash.5.2xday))

# Cash 5 (1x day drawing)
names(cash.5.1xday) <- c("date","numbers")
cash.5.1xday$date <- as.Date(as.character(cash.5.1xday$date),format="%m/%d/%Y")
cash.5.1xday$numbers <- sub(" Night: ","",as.character(cash.5.1xday$numbers))
numbers <- do.call(rbind,strsplit(as.character(cash.5.1xday$numbers),","))
numbers <- as.data.frame(apply(numbers,2,as.numeric))

cash.5.1xday <- cbind(cash.5.1xday,numbers)
cash.5.1xday$numbers <- NULL
names(cash.5.1xday)[2:6] <- c("N1","N2","N3","N4","N5")

save(cash.5.1xday, file="data/cash.5.1xday.rdata")

# Cash 5 (twice daily drawings)
names(cash.5.2xday) <- c("date","day","night")
cash.5.2xday$date <- as.Date(as.character(cash.5.2xday$date),format="%m/%d/%Y")

cash.5.2xday$day <- sub(" Day: ","",as.character(cash.5.2xday$day))
cash.5.2xday$night <- sub(" Night: ","",as.character(cash.5.2xday$night))

library(reshape2)
cash.5.2xday <- melt(cash.5.2xday,id.vars = "date",variable.name = "time",value.name = "numbers")
numbers <- do.call(rbind,strsplit(as.character(cash.5.2xday$numbers),","))
numbers <- as.data.frame(apply(numbers,2,as.numeric))

cash.5.2xday <- cbind(cash.5.2xday,numbers)
cash.5.2xday$numbers <- NULL
names(cash.5.2xday)[3:7] <- c("N1","N2","N3","N4","N5")
cash.5.2xday <- cash.5.2xday[order(cash.5.2xday$date, decreasing = TRUE),]
rownames(cash.5.2xday) <- NULL
save(cash.5.2xday, file="data/cash.5.2xday.rdata")


# Pick 4 ------------------------------------------------------------------

# On April 11, 1999, Cash 5 switched to twice daily drawings
pick.4 <- p4_data[grepl(pattern = "^[0-9]",p4_data)]
pick.4 <- strsplit(pick.4,split = ";")
spt <- which(diff(sapply(pick.4,length))!=0)

pick.4.1xday <- pick.4[(spt+1):length(pick.4)]
pick.4.2xday <- pick.4[1:spt]

pick.4.1xday <- as.data.frame(do.call(what = rbind,args = pick.4.1xday))
pick.4.2xday <- as.data.frame(do.call(what = rbind,args = pick.4.2xday))

# Pick 4 (1x day drawing)
names(pick.4.1xday) <- c("date","numbers")
pick.4.1xday$date <- as.Date(as.character(pick.4.1xday$date),format="%m/%d/%Y")
pick.4.1xday$numbers <- sub(" Night: ","",as.character(pick.4.1xday$numbers))
numbers <- do.call(rbind,strsplit(as.character(pick.4.1xday$numbers),","))
numbers <- as.data.frame(apply(numbers,2,as.numeric))

pick.4.1xday <- cbind(pick.4.1xday,numbers)
pick.4.1xday$numbers <- NULL
names(pick.4.1xday)[2:5] <- c("N1","N2","N3","N4")

save(pick.4.1xday, file="data/pick.4.1xday.rdata")

# Cash 5 (twice daily drawings)
names(pick.4.2xday) <- c("date","day","night")
pick.4.2xday$date <- as.Date(as.character(pick.4.2xday$date),format="%m/%d/%Y")

pick.4.2xday$day <- sub(" Day: ","",as.character(pick.4.2xday$day))
pick.4.2xday$night <- sub(" Night: ","",as.character(pick.4.2xday$night))

pick.4.2xday <- melt(pick.4.2xday,id.vars = "date",variable.name = "time",value.name = "numbers")
numbers <- do.call(rbind,strsplit(as.character(pick.4.2xday$numbers),","))
numbers <- as.data.frame(apply(numbers,2,as.numeric))

pick.4.2xday <- cbind(pick.4.2xday,numbers)
pick.4.2xday$numbers <- NULL
names(pick.4.2xday)[3:6] <- c("N1","N2","N3","N4")
pick.4.2xday <- pick.4.2xday[order(pick.4.2xday$date, decreasing = TRUE),]
rownames(pick.4.2xday) <- NULL
save(pick.4.2xday, file="data/pick.4.2xday.rdata")


# Pick 3 ------------------------------------------------------------------



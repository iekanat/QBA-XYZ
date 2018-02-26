### IMPORTING AND PREPROCESSING OES DATA
# Get raw data
oesData<-read.csv("data/state_M2016_dl.csv")
# Dump everything but OH
oesDataOH<-oesData[oesData$ST=="OH",]
# Dump broad categories and totals
oesDataOH<-oesDataOH[oesDataOH$OCC_GROUP=="detailed",]
# Convert factors to numeric
oesDataOH$TOT_EMP<-as.numeric(gsub(",","",paste(oesDataOH$TOT_EMP)))
oesDataOH$A_MEDIAN<-as.numeric(gsub(",","",paste(oesDataOH$A_MEDIAN)))
# Aggregate relevant variables
aggoesDataOH<-aggregate(TOT_EMP~A_MEDIAN, data=oesDataOH, sum)
# Export for later importing
write.csv()

qplot(data=aggregate(TOT_EMP~A_MEDIAN, data=oesDataOH, sum), x=A_MEDIAN, y=TOT_EMP)

#Importing data
data <- read.csv(file.choose())
data

#Setting row names as each player name
rownames(data) <- data[,1]
.rownamesDF(data, make.names=False) <- data[,1]

colnames(data)


#exploring data
head(data, n=10)
str(data)

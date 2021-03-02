
#Importing data
data <- read.csv(file.choose())


#examine data
head(data, n=10)   #make sure data looks good
str(data)          #checking variable types

#creating variables
ADP <- data[,'ADP']      #ADP is defaulting to character/double variable
rank <- data[,'Rank']
value <- (rank - ADP)

#creating subsets
young <- data$Age < 25   #looking to find potential break out candidates
data[young,]             

winners <- data$Proj.Wins > 90 #finding players on projected winning teams
data[winners,]

latepower <- data$HR > 30 & data$Rank > 100  #Finding HRs in round 10 or later
data[latepower,]

lateks <- data$K > 175 & data$Rank > 100   #Finding Ks in round 10 or later
data[lateks,]





#Writer: Abdullah MARAŞ
#########################################
#########################################
# Basic R Commands                     #
#########################################
#########################################

# Create Variable and assign a value
a <- 3
5 -> b

c <- NULL
d <- NA
# More to read for difference between NA and NaN
# https://www.r-bloggers.com/r-na-vs-null/

# simple mathematical operations
total <- a+b
a*b
a/b
a-b
a^b
#Create a vector
numbers <- c(1,3,5,7) # sayi dizisi
#Sn of vector elements
sum(numbers)
#Square root of each element
sqrt(numbers)
#trabspose of a matrix,dataframe
t(numbers)
#Calculation of Variance
var(numbers)
#Calculation of standarddeviation
sd(numbers)
#Generate a sequence
seq(1,10,1)
seq(1,100,2)
seq(2,100,2)

# Selecting Observations
numbers[1]
numbers[-3]
numbers[-c(1,3)]
numbers[2:4]
# character vectors
name <- c("oak", "ash", "misty", "brock")  
name[1:2]
name[c(1,3)]
name[-c(1,3)]

# Checking type of variables
is.character(name[1])
is.na(d)
is.null(b)
#Create a matrix by using cbind and predefined vectors
newvariable <- cbind(numbers,name)
#Create a data frame from matrix
newvariable <- as.data.frame(newvariable)

# Installing packages
install.packages("datasets")
library(datasets)

# Dataframe data type
titanicdataset <- as.data.frame(Titanic)
#Subsetting dataframes
titanicdataset$Class
titanicdataset[,1]
titanicdataset[3,]
titanicdataset[4:6,]
titanicdataset[,2:3]
#Getting column and row names
colnames(titanicdataset)
rownames(titanicdataset)
#Getting row and column number
nrow(titanicdataset)
ncol(titanicdataset)
#Summary statistics of dataframe
summary(titanicdataset)

# Factor data type
is.factor(titanicdataset$Survived)
#Getting factor levels
levels(titanicdataset$Survived)
#Count factor levels
table(titanicdataset$Survived)
#Change factor levels
levels(titanicdataset$Survived) <- c("hayir", "evet")
table(titanicdataset$Survived)

# Getting colnames of  a dataframe
colnames(titanicdataset)
#Remove a column from dataframe
titanicdataset <- titanicdataset[,-5]
#Change column names of data frame
colnames(titanicdataset)<-c("Class1","Sex1", "Age1","Survived1")
colnames(titanicdataset)
#İf clause in R
" if(){
   
 }else{
   
 }"
#To comment multiple line use ctrl+shift+c
if(titanicdataset$Survived1[30]=="evet"){
  print("Still alive !!")
  print(titanicdataset$Class1[30])
  print(titanicdataset$Sex1[30])
  print(titanicdataset$Age1[30])
}else{
  print("Dead :( ")
}
#For Loops in R
i <- 1
for(i in 1:nrow(titanicdataset)){
  if(titanicdataset$Survived1[i]=="evet")
    print(paste0(i, " - ",  titanicdataset$Age1[i]))
}

#While Loop
counter<-1
while(counter<=nrow(titanicdataset)){
  if(titanicdataset$Survived1[counter]=="hayir")
    print(paste0(counter, " - ",  verisetim$yas[counter]))
  counter <- counter+1
}

# Generating random number
floor(runif(32, min=5, max=90))

# Generating same random numbers
set.seed(1)
randomnumber <- floor(runif(32, min=5, max=90))

# Adding random column to dataframe
titanicdataset <- as.data.frame(cbind(titanicdataset[,1:3],randomnumber,titanicdataset$Survived1))
summary(titanicdataset)
#Change specific column name
colnames(titanicdataset)[5] <- "Survived"
summary(titanicdataset)

# Some type of graphics
plot(titanicdataset$randomnumber)
hist(titanicdataset$randomnumber)
pie(x = table(titanicdataset$Class1), labels = c("1.class", "2.class","3.class","Personnel"))
boxplot(titanicdataset$randomnumber)

# To make more practice
# https://www.statmethods.net/r-tutorial/index.html
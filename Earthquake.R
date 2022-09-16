earthquake <- datasets::quakes

#Top 10 rows and last 10 rows

head(earthquake,10)
tail(earthquake,10)

#columns

earthquake[40:50,c(1,2)]

df <- earthquake[,-6]

#Descriptive statistics

summary(earthquake[,c(4,5)]) #to generate 4th and 5th column


earthquake$lat
earthquake$long

summary(earthquake$lat)
summary(earthquake$long)

#Visualisation

#Scatterplot

plot(earthquake$lat,type="l")
plot(earthquake$long,type="l")

plot(earthquake$depth,earthquake$mag,type="l")

plot(earthquake) #Scattermatrix

#points and lines
## p: points  l: lines  b: both 

plot(earthquake$lat, type="l")
plot(earthquake$lat, type="p")
plot(earthquake$lat, type="b")

plot(earthquake$lat, xlab = "xaxis", ylab = "yaxis", main = "Latitude", col = "blue", type = "l")

#Horizontal bar plot
barplot(earthquake$lat, main = "sample", ylab = "yaxis", col = "red", horiz = T, axes = T)

#Histogram
hist(earthquake$lat,main = "Histogram of earthquake latitude", xlab = "latitude", col = "Red")

#Single box plot

boxplot(earthquake$lat, main = "Box Plot")

boxplot.stats(earthquake$lat)$out

#Multiple box plots

boxplot(earthquake[,2:4], main = "Multiple")

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(earthquake$lat)
plot(earthquake$lat, earthquake$long)
plot(earthquake$lat, type = "l")
barplot(earthquake$lat, main = "Latitude", col = "blue")
boxplot(earthquake[,2:4])
hist(earthquake$lat)

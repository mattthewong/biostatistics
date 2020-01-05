#chapter2notes
males = c(1.72,1.69,1.70,1.66)
females = c(1.55,1.62,1.58,1.53)
mean(males)

#boxplot
boxplot(males,females, names = c("Males","Females"),
        xlab = "Gender",ylab = "Heights (m)", cex.lab =1.5)

#boxplot creation for number of sunspots per year
S = "http://solarscience.msfc.nasa.gov/greenwch/spot_num.txt"
sun = read.table(S,header = T)
plot(sun$SSN,xaxt = "n",type = "l",cex.lab = 1.5, xlab = "Year",ylab ="Number of Spots")
XA = seq(14,length(sun$SSN) + 12,by = 120)
lab = seq(1750,2013,by = 10)
axis(1,at = XA,labels = lab, las = 2)

#homeworkproblemschapter2
grades = c(86.3,79.9,92.4,85.5,96.2,68.9)
mean(grades)
coons = read.csv("raccoons.csv")
names(coons)
summary(coons)

#chapter3notes
set.seed(100)
N <- 1:10
dat <- rnorm(10)
trmt <- rep(c("A","B","C", "D", "E"), each = 2)
my.dat2 <- data.frame(N,trmt,dat)
stacked.dat <- stack(my.dat2)
names(stacked.dat) = c("int", "letter")


#chapter3problems
cheetahs <- c(102,107,109,101,112)
cheetahssorted <- sort(cheetahs, decreasing = TRUE)
order(cheetahs)
cheetahssorted[order(cheetahs)]

gunspeed <- .1
signif(gunspeed)

my.dat = read.csv("musclemass")
stacked.dat = stack(my.dat)
stacked.dat[order(stacked.dat$values),]
low <- subset(stacked.dat,ind == "Low")
med <- subset(stacked.dat,ind == "Medium")
high <-subset(stacked.dat,ind == "High")
sd(low$values)
mean(low$values)
sd(med$values)
mean(med$values)
sd(high$values)
mean(high$values)

lessthan30 <- subset(stacked.dat, values < 30)
#making groups of people
ids = 1:20
rand = sample(ids)
col1 = rand[1:5]
col2 = rand[6:10]
col3 = rand[11:15]
col4 = rand[16:20]

sexydataset = data.frame(col1,col2,col3,col4)
sexydataset

#chapter4problems
flag <- c(11.1,9.9,8.7,8.6,7.0,4.3)
mean(flag)
sd(flag)
median(flag)
sem = sd(flag)/(sqrt(length(flag)))
shapiro.test(flag)

my.dat = rnorm(1000, mean = 76, sd = 5)
mean(my.dat)
median(my.dat)
sd(my.dat)
sd(my.dat)/(sqrt(length(my.dat)))
shapiro.test(my.dat)
simple.eda(my.dat)

which(my.dat > 81)
which(my.dat < 71)

imported = read.csv("Real.csv")
pop = imported$X2012
simple.eda(pop)



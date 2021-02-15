library(jsonlite)
filter_table <- demo_table2[demo_table2$price > 10000,]

filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status)

sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)

demo_table[sample(1:nrow(demo_table),2),]

num_list <- 1:nrow(demo_table)
num_list

library(tidyverse)

demo_table3 <- demo_table %>% mutate(IsActive = TRUE, Mileage_per_Year = Total_Miles/(2020-Year))

summarize_demo <- demo_table2 %>% group_by(condition) %>% summarise(Mean_Mileage=mean(odometer), Maximum_Price=max(price), Num_Vehicles =n (), .groups="rowwise")

demo_table4 <- read.csv('01_Demo/demo2.csv', check.names=F, stringsAsFactors = F)

long_table <- gather(demo_table4, key='Metric', value='Score', buying_price:popularity)

wide_table <- long_table %>% spread(key="Metric", value ="Score")

wide_table <- wide_table[,order(colnames(wide_table))]
demo_table4 <- demo_table4[,order(colnames(demo_table4))]

plt <- ggplot(mpg, aes(x=class))
plt + geom_bar()

mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups="keep")
plt <- ggplot(mpg_summary, aes(x=manufacturer,y=Vehicle_Count))
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") +
  theme(axis.text.x=element_text(angle = 45,hjust = 1))


mpg_summary1 <- subset(mpg, manufacturer = "toyota") %>% group_by(cyl) %>% summarise(Mean_Hwy=mean(hwy), .groups="keep")
plt1 <- ggplot(mpg_summary1, aes(x=cyl,y=Mean_Hwy))

plt1 + geom_line() + scale_x_discrete(limits=c(4,5,6,8)) + scale_y_continuous(breaks=c(15:30))

plt3 <- ggplot(mpg, aes(x=displ,y=cty, color=class, shape=drv))
plt3 + geom_point() + labs(x="Engine Size (L)", y= "City Fuel-Efficiency (MPG)", color="Vehicle Class", shape="Type of Drive")

#boxplot + scatter plot
plt4 <- ggplot(mpg, aes(x=manufacturer, y=hwy, color=drv))
plt4 + geom_boxplot(outlier.color = 'red', outlier.shape = 1) + theme(axis.text.x=element_text(angle=45,hjust=1)) +
  geom_point()

mpg_summary2 <- mpg %>% group_by(class,year) %>% summarise(Mean_Hwy=mean(hwy),.groups='keep')
plt5 <- ggplot(mpg_summary2, aes(x=class,y=factor(year),fill=Mean_Hwy))
plt5 + geom_tile() + labs(x="Vehicle Class", y="Vehicle Year", fill="Mean Highway (MPG)")

mpg_summary3 <- mpg %>% group_by(model,year) %>% summarise(Mean_Hwy=mean(hwy), .groups='keep')
plt6 <- ggplot(mpg_summary3, aes(x=model, y=factor(year),fill=Mean_Hwy))
plt6 + geom_tile() + labs(x="Model", y="Vehicle Year", fill="Mean Highway (MPG") +
  theme(axis.text.x = element_text(angle=90, hjust=1, vjust=.5))


mpg_summary4 <- mpg %>% group_by(class) %>% summarise(Mean_Engine=mean(displ), SD_Engine=sd(displ), .groups='keep')
plt7 <- ggplot(mpg_summary4, aes(x=class, y=Mean_Engine))
plt7 + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") +
  geom_errorbar(aes(ymin=Mean_Engine-SD_Engine, ymax=Mean_Engine+SD_Engine))


ggplot(mtcars, aes(x=wt)) + geom_density()

shapiro.test(mtcars$wt)

population_table <- read.csv('01_Demo/used_car_data.csv', check.names = F, stringsAsFactors = F)
plt8 <- ggplot(population_table, aes(x=log10(Miles_Driven)))
plt8 + geom_density()


sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
plt9 <- ggplot(sample_table,aes(x=log10(Miles_Driven))) #import dataset into ggplot2
plt9 + geom_density() #visualize distribution using density plot


t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) #compare sample versus population means

sample_table2 <- population_table %>% sample_n(50) #generate 50 randomly sampled data points
sample_table3 <- population_table %>% sample_n(50) #generate another

t.test(log10(sample_table2$Miles_Driven),log10(sample_table3$Miles_Driven)) #compare means of two samples

mpg_data_mod <- read.csv("01_Demo/mpg_modified.csv")

mpg_1999 <- mpg_data_mod %>% filter(year==1999) #select only data points where the year is 1999
mpg_2008 <- mpg_data_mod %>% filter(year==2008) #select only data points where the year is 2008

t.test(mpg_1999$hwy, mpg_2008$hwy, paired = T)

mtcars_filt <- mtcars[,c("hp","cyl")]
mtcars_filt$cyl <- factor(mtcars_filt$cyl) 

summary(aov(hp ~ cyl,data=mtcars_filt)) #compare means across multiple levels

plt10 <- ggplot(mtcars, aes(x=hp,y=qsec))
plt10 + geom_point()

cor(mtcars$hp, mtcars$qsec)

plt11 <- ggplot(population_table, aes(x=Miles_Driven, y=Selling_Price))
plt11 + geom_point()
cor(population_table$Miles_Driven, population_table$Selling_Price)

used_matrix <- as.matrix(population_table[,c("Selling_Price","Present_Price","Miles_Driven")]) #convert data frame into numeric matrix
cor(used_matrix)

model <- lm(qsec ~ hp,mtcars) #create linear model
yvals <- model$coefficients['hp']*mtcars$hp +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model

plt12 <- ggplot(mtcars, aes(x=hp, y=qsec))
plt12 + geom_point() + geom_line(aes(y=yvals), color="red")


summary(lm(qsec ~ mpg + disp + drat +wt + hp, data=mtcars))

freq_table <- table(mpg$class, mpg$year)
chisq.test(freq_table)




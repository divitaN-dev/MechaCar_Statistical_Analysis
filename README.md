# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

* AWD, vehicle_length and intercept are unlikely to add random amount of variance to the linear model and have a significant impact on mpg.

* Sinc the interceot is statistically significant, there may be other variables and factors that contribute to variation in mpg that may not hvae been included in the current model.

* THe r-sqaured value in 0.68 which means roughly 68% of predictions will be correct using this model.

* Assumin a significance level 0f 0.05%, the p-value at 5.35e-11 is much smaller and suggests that the slope of the linear model is not zero.

## Summary Statistics on Suspension Coils

* The variance of the suspension coils meets the design specifications and is 62.3 so it does not exceed 100 pounds per square inch.
* However, looking at the vehicles as grouped in manufacting lots, lot number 3 has a variance much higher at 170 pounds per square inch and considerably fails the reuirement as stated in the design specifications.

## T-Tests on Suspension Coils

* The means of all manufacturing lots - Lot1, Lot2 and Lot3 are statistically similar to the overall mean as indicated by a p-value of 1 in all t.tests.

## Study Design: MechaCar vs Competition

Further analysis in the following would help uncover more answers for consumers points of interest such as - price, fuel efficiency , horse power, etc.
* A linear regression can be performed against data such as vehicle length and AMD from similar car models of competitive manufacturers for miles per gallon information.
* Similat t tests can be performed against population and smaple of means suspension coils weights in pounds per square inch against competetive manufactirers. As a contributing facor to behicle weight and consequently mpg. 
* An A/B test can be ddesigned where two different groups are provided with information about future design considerations and asked for review about the curret design considerations. The results can be assessed to analyze customer prefrences and also evaluate the outcomes of the popular design choices in manufacturing and engineering.
* A null hypothesis can be designed considering that design factors such as vehicle weight, spolier angle and ground clearnce do not make a significant differnce in miles per gallon and weather performance. A assess the null hypothesis sample of 50 vehicles can be tested on the given criteria. 


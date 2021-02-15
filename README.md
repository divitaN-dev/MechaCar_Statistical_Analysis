# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

* The features - AWD, vehicle_length and intercept are unlikely to add random amount of variance to the linear model and may have a significant impact on mpg.

* Since the interceopt is statistically significant, there may be other variables and factors that contribute to variation in mpg that may not have been provided in the current dataset.

* The r-sqaured value is 0.68 which indicates that roughly 68% of predictions will be correct using this model.

* Assuming a significance level 0f 0.05%, the p-value at 5.35e-11 is much smaller and suggests that the slope of the linear model is not zero.

![model_summary](https://github.com/divitaN-dev/MechaCar_Statistical_Analysis/blob/main/images/model_summary.png)



## Summary Statistics on Suspension Coils

* The variance of the suspension coils meets the design specifications. At 62.3 pounds per square inch, it does not exceed the maximum of 100 pounds per square inch.

![total_summary](https://github.com/divitaN-dev/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)


* However, looking at the vehicles grouped in different manufacting lots, lot number 3 has a variance much higher at 170 pounds per square inch and considerably fails the requirements of the design specifications.

![lot_summary](https://github.com/divitaN-dev/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)


## T-Tests on Suspension Coils

* The individual means of all manufacturing lots - Lot1, Lot2 and Lot3 are statistically similar to the overall mean as indicated by a p-value of 1 in all t.tests.

![lot_summary](https://github.com/divitaN-dev/MechaCar_Statistical_Analysis/blob/main/images/t-tests.png)


## Study Design: MechaCar vs Competition

Further analysis in the following would help uncover more answers for consumers points of interest such as - price, fuel efficiency , horse power, etc.

* A linear regression can be performed against data such as vehicle length and AMD from similar car models of competitive manufacturers for miles per gallon information.

* Similar t-tests can be performed against population and sample means of suspension coil weights in pounds per square inch against competetive manufacturers as that is a contributing factor to vehicle weight and consequently mpg. 

* An A/B test can be designed where two different groups are provided with information about future design considerations and asked for review about the current design considerations. The results can be assessed to analyze customer prefrences and to also evaluate the outcomes of the popular design choices in manufacturing and engineering.

* A null hypothesis can be designed considering that design factors such as vehicle weight, spolier angle and ground clearance do not make a significant difference in miles per gallon and weather performance. To assess the null hypothesis; a sample of 50 vehicles can be tested on the given criteria. 


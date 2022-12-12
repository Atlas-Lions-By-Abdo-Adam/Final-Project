# Ladybug Data: Examining Geographical Location of Samples #
## Introduction: ##

The data sets on ladybugs include observations of many species of ladybugs. Each sample has characteristics such as the date it was gathered, a unique ID, and geographic data like the nation, state, longitude, and latitude (if available). This research focuses on analyzing species populations through time as well as the geographic distribution of samples in the data set.

![Image 12-11-22 at 11 26 PM](https://user-images.githubusercontent.com/59566162/206967322-9ad0203f-f943-4b1a-8a94-76aa92920256.jpg)


## Data Cleaning: ##

Cleaning the data to ensure consistency is necessary before analysis and the production of useful data. On this data set, the following data cleaning procedures were used:

## Statistics About Locations in the Data: ##

The average latitude and longitude of the many ladybug species, according to their scientific names, are depicted in the graph below.

<img width="1108" alt="Screenshot 2022-12-11 at 11 30 10 PM" src="https://user-images.githubusercontent.com/59566162/206967613-1b637c38-b2d7-4e51-bdca-585f1891ccb6.png">

With the exception of the decimal variances, it is clear from this chart that the average longitude of the majority of the species is comparable. From this, we can infer that the northern US is home to a wide range of species that are classified as ladybugs. The average latitudes, on the other hand, indicate that these species are more likely to be found in the east and west sides of the Midwest.      

The boxplot below represents the latitudanal difference among the species.

<img width="924" alt="Screenshot 2022-12-11 at 11 05 45 PM" src="https://user-images.githubusercontent.com/59566162/206967716-8f424a22-0cd8-4032-baf7-6981023a825c.png">

These ladybug species may be found at latitudes of 41.28138 degrees, 41.57974 degrees, and 41.537828 degrees, respectively. We might infer that the dataset is less dispersed because of the interquartile range of 0.073419. Despite having one outlier in the data (40.506216), the dataset is less dispersed and has a solid consistency for further research. The boxplot's negative skewedness can also be detected. This indicates that there are many high-value scores in the data.

The boxplot below represents the longitudanal difference among the species.

<img width="622" alt="Screenshot 2022-12-11 at 11 05 59 PM" src="https://user-images.githubusercontent.com/59566162/206967730-fa7e5f0c-7c78-4afc-b537-3d143e41cca8.png">

These ladybug species can be found at the angles of 90.414653 degrees, 90.73943 degrees, and 90.552795 degrees, respectively. As seen by the interquartile range of 0.134363, the dataset is not as skewed. Even if there is one outlier in the data (90.46392724), this means that the dataset is less dispersed and has a solid consistency for further research. Additionally, the boxplot's positive skewedness may be detected. This indicates that there is a high frequency of low value scores in the data.
 
## Visualizations and Analysis: ##


Below is a visual of the number count of genuses of ladybugs by decade from 1956 till 2021. 

<img width="622" alt="Screenshot 2022-12-11 at 11 05 59 PM" src="https://user-images.githubusercontent.com/59566162/206967867-3746a02a-2de3-490d-a2b1-19100e3e3e07.png">

According to the line graph above, there were significantly more genuses discovered in 2021 than there were in the 1950s, when there were only a small number of genuses. This might have been brought on by the effects of World War II on the environment. There were only roughly 2 genera of ladybugs in existence in the 1960s and 1970s. This might have been a result of the US's widespread industrialization. It is clear from a minor increase around the 1980s that the influence may have been brought on by the US's growing environmental consciousness. The number of genuses did, however, dramatically decline after the 2000s due to rising pollution and environmental deterioration. Other than that, it will be unable to pinpoint the reason for their low population until the 2020s.


## T-test: ##

We used R to perform a T-test analysis to see if there was a statistically significant difference between the means of the two groups. On the latitude and longitude, we ran a t-test. Here are the outcomes:

Longitude and Latitude T-Test Results:

T-stat: 93.389

P-value: 2.2e-16

Confidence Interval: [9.88876 , 10.31333]

Mean of Longitude: 90.43693

Mean of Latitude: 41.50580

Difference in Means: 10.10104


The longitude and latitude test's p-value, 2.2e-16, is less than the significance level alpha (0.05), allowing us to draw the conclusion that there are significant differences in the types and locations of genera along the equator.

## Summary and Conclusion: ##

This information leads us to the conclusion that the samples that were gathered and examined came from a specific geographic area. Additionally, current decades are represented in the samples more so than earlier periods of time. The low sample size may not be typical of the population for each genus not just in the midwest but also in other regions of the country or the world where these species reside. From this data, we learnt that the midwest is home to a range of ladybug genus. Making a map of a genus' distribution using R and Excel presented a first challenge for this investigation. In the end, we opted to only examine the genus in one of the datasets because we were unable to think of a use for integrating the datasets that were provided.

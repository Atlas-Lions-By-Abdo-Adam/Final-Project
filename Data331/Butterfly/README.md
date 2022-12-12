# Final-Project

# Butterfly : Change in Wing Proportions Over Time #

## Intro: ##

The information in the butterly data set relates to observations of the Pieris rapae butterly. For each particular sample, measurements of different hypotheses are presented, along with the year those observations were made. This analysis looks at how the length, width, and apex size of wings have changed over time. Additionally, this report will provide details on the data's overall statistics and the methods used to clean the data. All other feature data provided in the sataset are not included in the proportions studied in this study, which are only wing length, wing breadth, and black patch apex.

Below is a labeled chart of a butterfly for reference:

<img width="501" alt="Screen Shot 2022-12-11 at 1 05 45 PM" src="https://user-images.githubusercontent.com/59566162/206957290-b003e6c6-b0cf-4fbb-8686-feee096c3e46.png">

## Data Cleaning: ##

For Data Cleaning, Cleaning the data to ensure consistency is necessary before analysis and the production of useful data. On the Butterfly data set, the following data cleaning procedures were used:

1) Change the SexUpdated column such that only males, females, or unknown/blanks were present.
2) Any numerical proportion column with N/A values were converted to 0.
3) made sure that the year format was the same for all of the variables in YearUpdated.

Additionally, we chose not to use the smaller "cleaned" data set and instead simply used the raw data. 

## Statistics About The Data: ##

The three studied columns' minimum, average, and maximum values are displayed in the statistics below. This is significant because it displays how the proportions are distributed. We can observe from this graph that the size of each wing is nearly the same. But generally speaking, the right wing is a little bit bigger than the left.

<img width="425" alt="Screenshot 2022-12-11 at 9 14 08 PM" src="https://user-images.githubusercontent.com/59566162/206957859-9ff51813-f540-44bb-bb28-16971a7b58a4.png">

## Distribution: ##

The left and right wings' proportional sizes by gender are shown in the image below.

<img width="425" alt="Screenshot 2022-12-11 at 9 14 08 PM" src="https://user-images.githubusercontent.com/59566162/206957894-ffe4ad56-fae2-4fc1-97c9-8edcaef6b76c.png">

The average wing proportions generally fall within the same range of sizes regardless of gender, as can be seen by glancing at this image. Interestinglly, the box and whiskers (which contains practically all of the data) and maximum value are a little bit bigger for men. This suggests that males' wings may be slightly smaller or larger than those of females.

The distribution in wing span for both sexes is shown below. The width of the right wing is added to the width of the left wing to determine wing span.

<img width="459" alt="Screenshot 2022-12-11 at 9 13 54 PM" src="https://user-images.githubusercontent.com/59566162/206957970-d478743f-7dc4-403b-a005-4b24f6a639c4.png">

This graph shows that the butterfly species Pieres rapae's wingspan is nearly regularly distributed around the mean (about 13). Additionally, it draws attention to a number of potential anomalies/inaccuracies in the 0. bin of data. That first bin also serves as a method to visualize how much data was missing as our data cleansing involved turning empty data into zeros. A wingspan is typically very predictable and will most likely fall within the middle range of this distribution, as we can see from the distribution of wingspan in the past.

## Analysis And Visualization: ##

Below is a visualization of wingspan evolution over time from 1821 to 2017. 

<img width="484" alt="Screenshot 2022-12-11 at 8 59 22 PM" src="https://user-images.githubusercontent.com/59566162/206958023-6303db19-3a42-4d26-8576-e1d84983d883.png">

The early 1950s see a sharp decline in wingspan, which is the first distinguishing aspect of this graph. Further research reveals that there is just one record for the year 1958, which distorts the data to suggest a decrease in wingspan at that time. The data, on the other hand, generally shows an upward tendency in increasing wing span across time from past to present. This pattern is probably going to persist in the future.

Below shows a breakdown of wingspan over time by gender from 1821 to 2016. 

<img width="530" alt="Screenshot 2022-12-11 at 8 59 34 PM" src="https://user-images.githubusercontent.com/59566162/206958162-4e1217f6-f306-4fb6-9218-52ab42f26aeb.png">

It provides an intriguing narrative by segmenting the history of wingspan evolution by the sex of the specimen. Not often do the wingspans change at the same time. For instance, the genders appear to be nearly opposite of one another at any given moment between 1889 and 1924. They do not start to alter at a comparable rate until the middle of the 19th century. Each line does, in theory, appear to be rising, but not consistently with the other sex.

The graph below highlighs information about the apex of each specimen.

<img width="524" alt="Screenshot 2022-12-11 at 8 59 44 PM" src="https://user-images.githubusercontent.com/59566162/206958287-39bcd08f-d758-44e6-ae30-37c5eadb64a6.png">

The apex of each wing was first thought to be similar. Regardless of whose wing the apex patch is on, the variation in size over time was essentially the same. However, the left's apex patch's average was consistently greater than the right's. It's interesting to note that the left patch is 10–15 mm bigger than the right one. Maybe this has to do with mate choice or some other evolutionary process.


## T-tests: ##
 
We used R Script to perform a T-test analysis to see if there was a statistically significant difference between the means of the two groups. The length and width of the right and left wings, as well as both of them, were subjected to a t-test. Here are the outcomes:

T-Test Results of RWingLength and LWingLength: 
T-stat: 93.389
P-value: 2.2e-16
Confidence Interval: [9.88876 , 10.31333]
Mean of differences: 10.10104 


T-Test Results of RWingWidth and LWingWidth: 
T-stat: 110.28
P-value: 2.2e-16
Confidence Interval: [10.11230 , 10.47855]
Mean of differences: 10.29543

We can draw the conclusion that the right wing length average differs substantially from the left wing length since the p-value for the wing length test, 2.2e-16, is less than the significance threshold alpha (0.05). The T-test for wing width yields the same p-value as the wing length test, allowing us to draw the same conclusion.

## Summary : ##

This study primarily examined changes in wing proportions over time among all sample populations and among genders. The data's overall trend showed that wing length, width, and apex spot size have all increased over time. We encountered numerous problems and dealt with a wide range of errors and malfunctions while working on this project. We discovered numerous anomalies and outliers that needed to be corrected during the exploratory data analysis process, ranging from the sample size of a given year being too small to having inconsistent naming conventions for the sex of each sample. This research can be repeated or extended with additional data sets for later usage, and it is likely that this will reveal an ongoing rise in wing proportions. Better data collection techniques should also be implemented.

The R script is dynamic, but it makes the assumption that the column names will match those in the original data. Make sure the column names are the same if you're using the script on a new dataset. The "analysisButterfly.R" script essentially repeats the analysis that was done in Excel.

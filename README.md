# Maternal-Health-Risk
## **Maternal Health Data Analysis**
This repository contains a dataset and data analysis related to maternal health using data collected from different healthcare facilities in rural areas of Bangladesh through an IoT-based risk monitoring system. Maternal mortality is a critical concern, and this analysis focuses on identifying significant risk factors using statistical modeling.

## *Dataset Source*
The dataset used in this analysis was obtained from Kaggle and comprises several important variables related to maternal health. These variables include:

**Age**: The age of the maternal health care recipient.
**Systolic Blood Pressure (SystolicBP)**: The systolic blood pressure of the patient.
**Diastolic Blood Pressure (DiastolicBP)**: The diastolic blood pressure of the patient.
**Blood Sugar (BS)**: Blood sugar levels.
**Body Temperature (BodyTemp)**: The body temperature of the patient.
**Heart Rate**: The heart rate of the patient.
**RiskLevel**: The risk level associated with maternal health, which is a critical focus of this analysis. (i.e., High Risk, Mid Risk, Low Risk)

## *Purpose*
Maternal mortality is a global health concern, and understanding the factors that contribute to it is crucial for effective healthcare interventions. The Sustainable Development Goals (SDGs) set by the United Nations (UN) also emphasize the reduction of maternal mortality rates. In this analysis, we aim to investigate the relationships between various health-related factors and maternal health risk levels.

## *Data Analysis*
### Quick overview of any patterns
![image](https://github.com/FabriceD1/Maternal-Health-Risk/assets/90782496/d245e87e-397e-47e5-9f87-705efbc31bf2)
  1. Age Histogram: Shows the distribution of ages. There's a single peak, suggesting the majority of subjects are within a certain age range.
  2. SystolicBP, DiastolicBP, BS, BodyTemp, HeartRate Scatterplots vs. Age:
    - Age vs. SystolicBP shows a correlation of 0.416, which is positive and suggests that as age increases, systolic blood pressure tends to increase.
    - Age vs. DiastolicBP has a correlation of 0.398, which is also positive, suggesting a similar trend as the systolic pressure.
    - Age vs. BS shows a correlation of 0.473, which is again positive, implying that the measured BS metric tends to rise with age.
    - Age vs. BodyTemp has a negative correlation of -0.255, indicating that as age increases, body temperature tends to decrease slightly.
    - Age vs. HeartRate shows a weak positive correlation of 0.080.
  3. Pairwise Scatterplots: These plots show relationships between different health metrics.
    - SystolicBP vs. DiastolicBP has a strong positive correlation of 0.787, which is expected as these two measures are typically related.
    - Other pairs, like SystolicBP vs. BS or DiastolicBP vs. BodyTemp, show varying degrees of correlation.

In summary, the data suggests:
 - There are significant correlations between age and various health metrics, like blood pressure and BS.
 - Relationships exist between certain health metrics, with systolic and diastolic blood pressures showing a strong positive correlation.
 - The distribution of risk levels in the sample is skewed towards higher risk.

### Multinomial Logistic Regression Analysis
To gain insights into the factors affecting maternal health risk levels, we conducted a multinomial logistic regression analysis. This statistical modeling technique allows us to calculate odds ratios, which help us understand the relative importance of each predictor variable in relation to the reference category, which is the "low risk" level in this analysis.

<img width="732" alt="image" src="https://github.com/FabriceD1/Maternal-Health-Risk/assets/90782496/67694540-c5d2-4624-9a09-a27d1de7d817">

  - high.risk: All predictors are statistically significant (p < 0.05) except for Age and DiastolicBP.
  - mid.risk: All predictors are statistically significant.


<img width="742" alt="image" src="https://github.com/FabriceD1/Maternal-Health-Risk/assets/90782496/fd696dff-f288-4db3-9d20-21d8e3b0a838">

  - These values indicate the multiplicative change in the odds for a one-unit increase in the predictor variable, holding other variables constant.
  - For example, for the high-risk category, for each one-unit increase in SystolicBP, the odds of being in the high risk group increase by about 6.8% (given by 1.068410).
  - Conversely, for each one-unit increase in Age, the odds of being in the high risk group decrease by about 1.9% (given by 0.9808077).


<img width="684" alt="image" src="https://github.com/FabriceD1/Maternal-Health-Risk/assets/90782496/e53fa6e3-9bb9-4879-a7f9-07c26222d069">

  - This shows the probabilities of an observation being classified into each risk level.
  - For instance, the first observation has a 0.28% chance of being low risk, a 91.04% chance of being high risk, and an 8.68% chance of being mid-risk.


*Usage*
You can find the dataset and the R code used for the multinomial logistic regression analysis in this repository. If you are interested in reproducing the analysis or further exploring the data, follow these steps:

Download the dataset from the provided Kaggle source.
Open the R script in the repository to view the data analysis steps and code.
Run the R script using your preferred R environment to perform the multinomial logistic regression analysis.
Feel free to customize the analysis or use the dataset for your research or educational purposes, keeping in mind the importance of maternal health and its contribution to achieving SDGs.

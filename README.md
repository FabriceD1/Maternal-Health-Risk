# Maternal-Health-Risk
**Maternal Health Data Analysis**
This repository contains a dataset and data analysis related to maternal health using data collected from different healthcare facilities in rural areas of Bangladesh through an IoT-based risk monitoring system. Maternal mortality is a critical concern, and this analysis focuses on identifying significant risk factors using statistical modeling.

*Dataset Source*
The dataset used in this analysis was obtained from Kaggle and comprises several important variables related to maternal health. These variables include:

Age: The age of the maternal health care recipient.
Systolic Blood Pressure (SystolicBP): The systolic blood pressure of the patient.
Diastolic Blood Pressure (DiastolicBP): The diastolic blood pressure of the patient.
Blood Sugar (BS): Blood sugar levels.
Body Temperature (BodyTemp): The body temperature of the patient.
Heart Rate: The heart rate of the patient.
RiskLevel: The risk level associated with maternal health, which is a critical focus of this analysis. (i.e., High Risk, Mid Risk, Low Risk)

*Purpose*
Maternal mortality is a global health concern, and understanding the factors that contribute to it is crucial for effective healthcare interventions. The Sustainable Development Goals (SDGs) set by the United Nations (UN) also emphasize the reduction of maternal mortality rates. In this analysis, we aim to investigate the relationships between various health-related factors and maternal health risk levels.

*Data Analysis*
To gain insights into the factors affecting maternal health risk levels, we conducted a multinomial logistic regression analysis. This statistical modeling technique allows us to calculate odds ratios, which help us understand the relative importance of each predictor variable in relation to the reference category, which is the "low risk" level in this analysis.

*Usage*
You can find the dataset and the R code used for the multinomial logistic regression analysis in this repository. If you are interested in reproducing the analysis or further exploring the data, follow these steps:

Download the dataset from the provided Kaggle source.
Open the R script in the repository to view the data analysis steps and code.
Run the R script using your preferred R environment to perform the multinomial logistic regression analysis.
Feel free to customize the analysis or use the dataset for your research or educational purposes, keeping in mind the importance of maternal health and its contribution to achieving SDGs.

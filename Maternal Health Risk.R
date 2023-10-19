library(tidyverse)
library(readxl)

maternal <- read_csv("/Users/fabri/Downloads/Kaggle Datasets/Maternal Health Risk Data Set.csv")

attach(maternal)

summary(maternal)

# Convert Risk Level to factors
maternal$RiskLevel <- as.factor(maternal$RiskLevel)
levels(maternal$RiskLevel)

### Quick overiew of any patterns
library(GGally)

GGally::ggpairs(maternal)

library(nnet)


maternal$RiskLevel <- relevel(maternal$RiskLevel, ref = "low risk")
test <- multinom(RiskLevel ~ Age +SystolicBP + DiastolicBP + BS + BodyTemp +
                 HeartRate, data = maternal)

summary(test)

# Calculate z value
z <- summary(test)$coefficients/summary(test)$standard.errors

# 2-tailed z test
p <- (1 - pnorm(abs(z), 0, 1)) * 2
p

# display p-values in transposed data frame
data.frame(t(p))

## extract the coefficients from the model and exponentiate
exp(coef(test))

##calculate predicted probabilities
head(pp <- fitted(test))



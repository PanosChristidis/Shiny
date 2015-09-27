Mercury vapor pressure at different temperatures
========================================================
author: PC
date: 27 September 2015

Overview
========================================================

This is a simple appliction on shiny, just to explore what can be done.

- Work started with a lot of ambition (the goal was to show a complex using an external dataset that combined quantitative and qualitative variables and -if possible- show results on a map).

- Many things didn´t work as expected (using external data, combining different types of input), which is normal for the time allocated. But at least the basics have been assiniliated!

- So, what we have here is a demonstration using a small dataset that comes with R (pressure) that shows how we can run a simple prediction model using shiny


The dataset
========================================================


```r
summary(pressure)
```

```
  temperature     pressure       
 Min.   :  0   Min.   :  0.0002  
 1st Qu.: 90   1st Qu.:  0.1800  
 Median :180   Median :  8.8000  
 Mean   :180   Mean   :124.3367  
 3rd Qu.:270   3rd Qu.:126.5000  
 Max.   :360   Max.   :806.0000  
```

Correlation pressure-temperature
========================================================

![plot of chunk unnamed-chunk-2](mercury-figure/unnamed-chunk-2-1.png) 

The model
========================================================

- Yes, it is really simple (and probably wrong)


```r
library(caret)
model<-train(pressure ~ temperature-1, method="glm", data=pressure)

summary(model)
```

```

Call:
NULL

Deviance Residuals: 
    Min       1Q   Median       3Q      Max  
-158.08  -117.06   -32.84    72.30   409.43  

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) -147.8989    66.5529  -2.222 0.040124 *  
temperature    1.5124     0.3158   4.788 0.000171 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

(Dispersion parameter for gaussian family taken to be 22744.99)

    Null deviance: 908195  on 18  degrees of freedom
Residual deviance: 386665  on 17  degrees of freedom
AIC: 248.42

Number of Fisher Scoring iterations: 2
```

- Now have a look at the online version, which allows you to estimate pressure at different temperatures, based on this model:
https://panosc.shinyapps.io/Shiny




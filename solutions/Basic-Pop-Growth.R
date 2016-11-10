##  R script to cacluate population growth rate of the greater sage-grouse
##  under different scenarios habitat loss.
##  Our scenarios make the following assumptions:
##    1. Current sage-grouse survival rate (s) is 0.8.
##    2. Current sage-grouse birth rate (b) is 0.3.
##    3. For every hectare of habitat lost, sage-grouse survival drops 1%.
##    4. For every hectare of habitat lost, sage-grouse birth rates drop 3%.
##
##  Author: Andrew Tredennick (atredenn@gmail.com)
##  Date created: November 10, 2016



####  Set initial values
b             <- 0.3                            # per capita birth rate
b_drop        <- 0.03                           # proportion decline in b     
s             <- 0.8                            # per capita survival rate
s_drop        <- 0.01                           # proportion decline in s     
hectares_lost <- seq(1, 10, by=0.5)             # sequence of habitat loss scenarios
lambda        <- numeric(length(hectares_lost)) # empty vector for lambda

####  Loop over `hectares_lost` and calculate lamdas
for(i in 1:length(hectares_lost)){
  tmp_b     <- b - (b * b_drop * hectares_lost[i])
  tmp_s     <- s - (s * s_drop * hectares_lost[i])
  lambda[i] <- tmp_b + tmp_s
}

####  Plot `lambda` as function of `hectares_lost`
plot(hectares_lost, lambda, xlab = "Habitat Loss (ha)", ylab = "Population Growth Rate")
abline(h=1, col="red")
#description:computes the residual sum of squares of a "lm" object 
#input:a "lm" object
#output:RSS(numerical value)

residual_sum_squares<-function(x){
   sum(x$residuals^2)
 }


#description:computes the total sum of squares of a "lm" object
#input:a "lm" object
#output:TSS (numerical value)
total_sum_squares<-function(x){
   rss<-residual_sum_squares(x)
   r2<summary(x)$r.squared
   rss/(1-r2)
}

#description:computes the coefficient of determination of a "lm" object
#input:a "lm" object
#output:R square(numerical value)
r_squared<-function(x){
   r2<summary(x)$r.squared
}

#description:computes the F-statistic of a "lm" object
#input:a "lm" object
#output: F-statistics(numerical value)
f_statistic<-function(x){
  summary(x)$fstatistic[1]
}


#description:computes the residual standard error of a "lm" object
#input:a "lm" object
#output: RSE(numerical value)
residual_std_error<-function(x){
    sqrt(deviance(x)/df.residual(x))
}

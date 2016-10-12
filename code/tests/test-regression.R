source("../functions/regression-functions.R")
context("Test for multiple regression functions")

#Use built-in dataset mtcars as a test
reg <- lm(mpg ~ disp + hp, data = mtcars)
regsum <- summary(reg)


#test the residual_sum_squares function
test_that("RSS function is working",{
    expect_equal(residual_sum_squares(reg),sum(reg$residuals^2))
    expect_length(length(residual_sum_squares(reg)),1)
    expect_type(residual_sum_squares(reg),'double')
})


#test the total_sum_squares function
test_that("TSS function is working", {
    expect_equal(total_sum_squares(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))
    expect_length(length(total_sum_squares(reg)),1)
    expect_type(total_sum_squares(reg),'double')

})

#test the r_square function
test_that ("R square function is working",{
    expect_equal(r_squared(reg),regsum$r.squared)
    expect_gt(r_squared(reg), 0)
    expect_lt(r_squared(reg), 1)
    expect_type(r_squared(reg),'double')
})

#test the F-statistic function
test_that ("F-statistic function is working"{
   expect_equal(f_statistic(reg),regsum$fstatistic[1])
   expect_length(length(f_statistic(reg)),1)
   expect_gt(f_statistic(reg), 0)
})

#test the residual_std_error function
test_that ("RSD function is working" {
   expect_equal(residual_std_error(reg), regsum$sigma)
   expect_length(length(residual_std_error(reg)),1)
   expect_type(residual_std_error(reg),'double')
})

source("../functions/regression-functions.R")


#test the residual_sum_squares function
context("Test for residual_sum_squares function")
test_that("RSS for a given 'lm' object" {
    expect_equal(residual_sum_squares(x), )
    expect_length(residual_sum_squares(x),1)
    expect_type(residual_sum_squares(x),'double')
})


#test the total_sum_squares function
context("Test for total_sum_squres function")
test_that("TSS for a given 'lm' object" {
    expect_equal(total_sum_squares(x),)
    expect_length(total_sum_squares(x),1)
    expect_type(total_sum_squares(x),'double')

})

#test the r_square function
context("Test for r_square function")
test_that ("R^2 for a given 'lm' object" {
    expect_equal(r_squared(),)
    expect_length(r_squared(),1)
    expect_type(r_squared(),'double')
})

#test the F-statistic function
context("Test for F-statistic function")
test_that ("F-statistic for a given 'lm' object"{
   expect_equal(f-statistic(x),)
   expect_length(f-statistic(x),1)
   expect_type(f-statistic(x),'double')
})

#test the residual_std_error function
context("Test for residual_std_error function")
test_that ("RSD for a given 'lm' object" {
   expect_equal(residual_std_error(x),)
   expect_length(residual_std_error(x),1)
   expect_type(residual_std_error(x),'double')
})

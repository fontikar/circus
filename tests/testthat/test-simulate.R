context("Testing the simulate function...")

test_that("Checking rnorm..", {
 expect_equal(length(circus::simulate(10,0)), 10 , info = "Checking rnorm works")
})

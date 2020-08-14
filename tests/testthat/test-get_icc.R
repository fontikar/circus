context("Testing the get_icc function")

test_that("Checking model class is brmsfit", {
  model <- testthis::read_testdata("model.rds")
  expect_is(model, "brmsfit")
})

test_that("Checking model has random effects", {
  model <- testthis::read_testdata("model.rds")
  expect_true(nrow(model$ranef) > 0)
})

test_that("Checking model has random intercepts only", {
  model <- testthis::read_testdata("model.rds")
  expect_true(all(model$ranef$coef %in% "Intercept"))
})

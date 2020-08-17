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


test_that("Checking H2 is about right", {
  model <- testthis::read_testdata("model.rds")
  h2 = circus::get_icc(model,var = "ANIMAL")
  expected_h2 = 0.3183
  expect_true(abs(h2$Estimate - expected_h2) < 0.01)
  expect_true(h2$Estimate <= h2$Upper && h2$Estimate >= h2$Lower)
  expect_true(h2$var == "ANIMAL")
})


test_that("Bad models crash", {
  for (stupid_model in c("model_bad_2_novar.rds", "model_bad_3_slopes.rds", "model_bad_lm.rds")) {
      model = testthis::read_testdata("model_bad_2_novar.rds")
      expect_error(circus::get_icc(model,var = "ANIMAL"))
  }
})

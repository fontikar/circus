context("Testing the get_icc function")

test_that("Checking model attributes", {
  inv.phylo <- MCMCglmm::inverseA(gryphonPed)
  A <- solve(inv.phylo$Ainv)
  rownames(A) <- rownames(inv.phylo$Ainv)

  model <- brms::brm(
    BWT ~  1 + (1|ANIMAL) + (1|MOTHER) + (1|BYEAR), data = gryphon,
    family = gaussian(), cov = list(ANIMAL = A),
    chains = 1, iter = 5
  )

  expect_is(model, "brmsfit")
  expect_true(nrow(model$ranef) > 0)
  expect_true(all(model$ranef$coef %in% "Intercept"))
})


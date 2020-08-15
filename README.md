[![Build Status](https://travis-ci.com/fontikar/circus.svg?branch=master)](https://travis-ci.com/fontikar/circus)

[![codecov](https://codecov.io/gh/fontikar/circus/branch/master/graph/badge.svg)](https://codecov.io/gh/fontikar/circus)

# circus

`circus` is an R package provides functions for calcuating descriptive
statistics using variance components from `brms` model objects.

Introduction
------------

When quantitative measurements are hierarchically organized at multiple
levels, intra-class correlations (ICC) can be used to express how
strongly units of the same group resemble each other (McGraw & Wong
1996). ICC takes the form:

<img src=
"https://render.githubusercontent.com/render/math?math=%5Cdisplaystyle+%5Cbegin%7Balign%2A%7D%0AICC+%26%3D+%5Cfrac%7B%5Csigma_G%7D%7B%28%5Csigma_G+%2B+%5Csigma_e%29%7D+%0A%5Cend%7Balign%2A%7D%0A" 
alt="\begin{align*}
\Large ICC &= \frac{\sigma_G}{(\sigma_G + \sigma_e)} 
\end{align*}
">

where <img src=
"https://render.githubusercontent.com/render/math?math=%5Ctextstyle+%5Cbegin%7Balign%2A%7D%0A%5Csigma_G%0A%5Cend%7Balign%2A%7D%0A" 
alt="\begin{align*}
\sigma_G
\end{align*}
"> is the variance amoung units of a specific group
and <img src=
"https://render.githubusercontent.com/render/math?math=%5Ctextstyle+%5Cbegin%7Balign%2A%7D%0A%5Csigma_G%0A%5Cend%7Balign%2A%7D%0A" 
alt="\begin{align*}
\sigma_e
\end{align*}
"> is the residual variance. One application of ICC
in biological literature is the calculation of heritability in
quantitive genetics studies from animal models (Wilson et. al, 2010) or
repeatability of behavioural traits in animal personality studies
(Nakagawa & Schielzeth, 2010)

Currently `circus` supports one function `get_icc()` to compute ICC from
random effects models.

Installation
------------

`circus` is not currently on CRAN. For testing purposes only it can be
downloaded through devtools as follows:

``` r
install.packages("devtools")
devtool::install_github("fontikar/circus")

library(circus)
```

**NOTE:** This package is still under development so functions have not
be extensively tested. Please reach out if you have any feedback.

How it works
------------

As a simple example, we will fit an animal model using random
regression to model the birth weight of mythical gryphons using `brms`.
We will use the `gryphon` dataset and `gryphonPed` pedigree included in
the `circus` package to estimate heritability of birth weight (`BWT`).
We will also partition variance due to `MOTHER` identity and `YEAR` as
mothers gave birth across different years by fitting these as random
intercepts.

``` r
#Arrange the pedigree into an inverted relatedness matrix
inv.phylo <- MCMCglmm::inverseA(gryphonPed)
A <- solve(inv.phylo$Ainv)
rownames(A) <- rownames(inv.phylo$Ainv)

#Fitting the model
model <- brms::brm(
  BWT ~  1 + (1|ANIMAL) + (1|MOTHER) + (1|BYEAR), 
  data = gryphon,
  family = gaussian(), cov = list(ANIMAL = A),
  chains = 1, iter = 20)
```

**NOTE:** This fit is a very short run and is for demonstrative
purposes only. It will result in warnings about convergence etc.

Heritability (*h*<sup>2</sup>) is the proportion of total variance in
birthweight attributed to genetic differences among each individual
(`ANIMAL`). Total variance is the sum of all variance components:

<img src=
"https://render.githubusercontent.com/render/math?math=%5Ctextstyle+%5Cbegin%7Balign%2A%7D%0Ah%5E2+%26%3D+%5Cfrac%7B%5Csigma_%7BANIMAL%7D%7D%7B%28%5Csigma_%7BANIMAL%7D+%2B+%5Csigma_%7BMOTHER%7D+%2B+%5Csigma_%7BBYEAR%7D+%2B+%5Csigma_%7Be%7D%29%7D+%0A%5Cend%7Balign%2A%7D%0A" 
alt="\begin{align*}
\Large h^2 &= \frac{\sigma_{ANIMAL}}{(\sigma_{ANIMAL} + \sigma_{MOTHER} + \sigma_{BYEAR} + \sigma_{e})} 
\end{align*}
">

``` r
#Compute ICC for the group variable "ANIMAL", this is heritability
get_icc(model, var = "ANIMAL")
```

    #>        var  Estimate  Est.Error     Lower     Upper
    #> icc ANIMAL 0.3183965 0.07118566 0.1866593 0.4701074

References
----------

McGraw, K. O., & Wong, S. P. (1996). Forming inferences about some
intraclass correlation coefficients. Psychological methods, 1(1), 30.

Wilson, A. J., Reale, D., Clements, M. N., Morrissey, M. M., Postma, E.,
Walling, C. A., Kruuk, L. E. B & Nussey, D. H. (2010). An ecologist's
guide to the animal model. Journal of Animal Ecology, 79(1), 13-26.

Nakagawa, S., & Schielzeth, H. (2010). Repeatability for Gaussian and
non-Gaussian data: a practical guide for biologists. Biological
Reviews, 85(4), 935-956.

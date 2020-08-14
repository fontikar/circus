#'@title  Get intra-class correlation
#'@description Computes the intra-class coefficient from a "brmsfit" model object using the entire posterior distribution
#'@usage get_icc(model, var)
#'@param model A model object of class "brmsfit". Model must contains at least one random effect in order to computer an ICC value
#'@param var A character string that matches a random effect parameter in the model for which ICC is computed for.
#'@return A data frame containing the variable (var) which ICC is computed for, the posterior mean (Estimate) of ICC value, the standard deviation of the posterior distribution (Est.Error) and the two-sided 95% credible intervals (based on quantiles).
#'@examples
#' #Computes ICC for "ANIMAL", this represents the proportion of variance
#' #explained by additive genetic variation among individuals (i.e. heritability)
#' get_icc(model = fit1, var = "ANIMAL")
#'
#' #Computes ICC for "MOTHER", this is the proportion of variance
#' #explained by maternal identity (i.e maternal effects)
#' get_icc(model = fit1, var = "MOTHER")
#'@author Fonti Kar - fonti.kar@gmail.com
#'@export

get_icc <- function(model, var){
  #string to identify grouping variable
  var_str <- paste0("sd_", var)

  #Convert SD to variances
  var_comps <- brms::posterior_samples(model, c("^sd_", "sigma"))^2

  #Calculate the proportion of total variation explained by grouping variable
  icc <- var_comps[grep(var_str, names(var_comps))] / rowSums(var_comps)

  #Compiling data nicely
  df <- data.frame(var = var,
                   Estimate = brms::posterior_summary(icc)[1],
                   Est.Error = brms::posterior_summary(icc)[2],
                   Lower =  brms::posterior_summary(icc)[3],
                   Upper =  brms::posterior_summary(icc)[4])

  rownames(df) <- "icc"

  return(df)
}

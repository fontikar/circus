#'@title Gryphon: Morphological Traits of the mythical Gryphon
#'@description This dataset was simulated for the paper: "An ecologist's guide to the animal model" by Wilson et. al 2010. Phenotypic traits were simulated over an arbitary pedigree structure using the program 'Pedantics' (Morrissey et al. 2007) to illustrate the uses of the 'animal model'. This dataset includes six variables measured from a cohort of gryphons (n = 1084). Variables include: The ID of each gryphon, the ID of the gryphon's mother, year of birth, sex, birth weight and tarsus length
#'@usage gryphon
#'@format A data frame
#' \enumerate{
#' \item ANIMAL: Unique identification for each gryphon (1084 levels)
#' \item MOTHER: Unique identification for each mother (429 levels)
#' \item BYEAR: Year of Birth
#' \item SEX:	Sex of gryphon
#' \item BWT:	Birth weight at fledging
#' \item TARSUS:	Tarsus length at fledging
#'}
#'@name gryphon
#'@references Wilson, A. J., Reale, D., Clements, M. N., Morrissey, M. M., Postma, E., Walling, C. A., Kruuk, L. E. B & Nussey, D. H. (2010). An ecologist's guide to the animal model. Journal of Animal Ecology, 79(1), 13-26.
#'@references Morrissey, M. B., Wilson, A. J., Pemberton, J. M., & Ferguson, M. M. (2007). A framework for power and sensitivity analyses for quantitative genetic studies of natural populations, and case studies in Soay sheep (Ovis aries). Journal of Evolutionary Biology, 20(6), 2309-2321.
#'@seealso gryphonPed
#'@docType data
NULL

#'@title GryphonPed: Pedigree of the mythical Gryphon
#'@description This dataset is a pedigree and was simulated for the paper: "An ecologist's guide to the animal model" by Wilson et. al 2010. This dataset includes three variables from a cohort of gryphons (n = 1309). Variables include: The ID of each gryphon, the ID of the gryphon's father and the  the ID of the gryphon's mother
#'@usage gryphonPed
#'@format A data frame
#' \enumerate{
#' \item ANIMAL: Unique identification for each gryphon (1309 levels)
#' \item FATHER: Unique identification for each father (159 levels)
#' \item MOTHER: Unique identification for each mother (429 levels)
#'}
#'@name gryphonPed
#'@references Wilson, A. J., Reale, D., Clements, M. N., Morrissey, M. M., Postma, E., Walling, C. A., Kruuk, L. E. B & Nussey, D. H. (2010). An ecologist's guide to the animal model. Journal of Animal Ecology, 79(1), 13-26.
#'@references Morrissey, M. B., Wilson, A. J., Pemberton, J. M., & Ferguson, M. M. (2007). A framework for power and sensitivity analyses for quantitative genetic studies of natural populations, and case studies in Soay sheep (Ovis aries). Journal of Evolutionary Biology, 20(6), 2309-2321.
#'@seealso \code{\link{gryphon}}
#'@docType data
NULL

#'@title Model output of random-intercept model from 'brms' using Gryphon data
#'@description This is an example model output from an animal model ran in 'brms' using Gryphon data. This model partitions the variance of birth weight (BWT) into additive genetic variance (ANIMAL), maternal variance (MOTHER) and among birth year variance (BYEAR). The pedigree of individuals (grphyonPed) was included in the model. The model was run with 500 iterations, warmup of 250 and thinned at every sample. Note this is a short run and is for demonstrative purposes only. Estimates will not be reliable.
#'@usage model
#'@format model output with class 'brmsfit', list of 19
#' \enumerate{
#' \item BWT:	Birth weight at fledging
#' \item ANIMAL: Unique identification for each gryphon (1309 levels)
#' \item MOTHER: Unique identification for each mother (429 levels)
#' \item BYEAR: Year of Birth
#'}
#'@name model
#'@references Wilson, A. J., Reale, D., Clements, M. N., Morrissey, M. M., Postma, E., Walling, C. A., Kruuk, L. E. B & Nussey, D. H. (2010). An ecologist's guide to the animal model. Journal of Animal Ecology, 79(1), 13-26.
#'@seealso \code{\link{gryphon}}
#'@seealso \code{\link{gryphonPed}}
#'@docType data
NULL

#'@title Model output of a linear model from 'stats' using Gryphon data
#'@description This is an example model output from an linear model ran in 'stats' using Gryphon data. This model tests for sex differences (SEX) in birth weight (BWT). Note This model is for demonstrative purposes only. Estimates will not be reliable as assumptions of the linear model are not met.
#'@usage model_bad_lm
#'@format model output with class 'lm', list of 13
#' \enumerate{
#' \item BWT:	Birth weight at fledging
#' \item SEX:	Sex of gryphon
#'}
#'@name model_bad_lm
#'@references Wilson, A. J., Reale, D., Clements, M. N., Morrissey, M. M., Postma, E., Walling, C. A., Kruuk, L. E. B & Nussey, D. H. (2010). An ecologist's guide to the animal model. Journal of Animal Ecology, 79(1), 13-26.
#'@seealso \code{\link{gryphon}}
#'@seealso \code{\link{gryphonPed}}
#'@docType data
NULL

#'@title Model output of a linear model from 'brms' using Gryphon data
#'@description This is an example model output from an linear model ran in 'brms' using Gryphon data. This model tests for sex differences (SEX) as well as among birth year differences (BYEAR) in birth weight (BWT). This model was run with 500 iterations, warmup of 250 and thinned at every sample. Note this is a short run for demonstrative purposes only. Estimates will not be reliable
#'@usage model_bad_novars
#'@format model output with class 'brmsfit', list of 19
#' \enumerate{
#' \item BWT:	Birth weight at fledging
#' \item SEX:	Sex of gryphon
#' \item BYEAR: Year of Birth
#'}
#'@name model_bad_novars
#'@references Wilson, A. J., Reale, D., Clements, M. N., Morrissey, M. M., Postma, E., Walling, C. A., Kruuk, L. E. B & Nussey, D. H. (2010). An ecologist's guide to the animal model. Journal of Animal Ecology, 79(1), 13-26.
#'@seealso \code{\link{gryphon}}
#'@seealso \code{\link{gryphonPed}}
#'@docType data
NULL

#'@title Model output of a random-slope model from 'brms' using unpublished lizard data
#'@description This is an example model output from an random-slope animal model ran in 'brms' using some unpublished data on body mass of lampropholis delicata collected by Fonti Kar. This model partitions variation in body mass (lnMass) into additive genetic variance, maternal variance (dam_id) as well as permanent environment variance (id). Random slopes was also estimated for maternal and permanent environment variance to model how variance changes with age (z_days_since_hatch). A genomic relatedness matrix was fitted in the model. This model was run with 4000 iterations, warmup of 1500 and thinned at every fifth sample. Note this model is demonstrative purposes only.
#'@usage model_bad_3_slopes
#'@format model output with class 'brmsfit', list of 19
#' \enumerate{
#' \item liz_id:	Unique identification for each lizard
#' \item dam_id:	Unique identification for each mother
#' \item id: Unique identification for each lizard, fitting ID of individual twice accounts for permenant environmental variance
#' \item z_days_since_hatch: days since hatching, z-transformed
#'}
#'@name model_bad_3_slopes
#'@references Wilson, A. J., Reale, D., Clements, M. N., Morrissey, M. M., Postma, E., Walling, C. A., Kruuk, L. E. B & Nussey, D. H. (2010). An ecologist's guide to the animal model. Journal of Animal Ecology, 79(1), 13-26.
#'@seealso \code{\link{gryphon}}
#'@seealso \code{\link{gryphonPed}}
#'@docType data
NULL

#'@title BTdata: Morphological Traits of the Blue Tit (Cyanistes caeruleus)
#'@description This dataset was collected for the study: "Testing the phenotypic gambit: phenotypic, genetic and environmental correlations of colour" by Hadfield et. al (2007). Data was collected in the spring of 2002 on a population of blue tits at Silwood Park, London, UK. This dataset includes seven variables measured from a cohort of blue tit chicks (n = 828). Blue tit chicks were cross-fostered between nests (i.e. chicks from different families were swapped). This allowed separation of genetic from environmental sources of variation. Variables include: two morphological traits (tarsus and back); sex; hatching date; the ID of the chick; ID of the chick's mother and the ID of the nest that fostered the chick.
#'@usage BTdata
#'@format A data frame
#' \enumerate{
#' \item tarsus:	Tarsus length, z-transformed
#' \item back:	Colour score of back plummage, z-transformed
#' \item animal:	Unique identification for each chick (828 levels)
#' \item dam:	Unique identification for each mother (106 levels)
#' \item fosternest:	Unique identification for foster nest (104 levels)
#' \item hatchdate:	Hatching date of chick, z-transformed
#' \item sex:	Sex of chick (3 levels, Fem = Female, Male = Male, UNK = Unknown)
#'}
#'@name BTdata
#'@references Hadfield, J. D., Nutall, A., Osorio, D., & Owens, I. P. F. (2007). Testing the phenotypic gambit: phenotypic, genetic and environmental correlations of colour. Journal of Evolutionary Biology, 20(2), 549-557.
#'@docType data
NULL

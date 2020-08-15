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
#'@references Wilson, A. J., Reale, D., Clements, M. N., Morrissey, M. M., Postma, E., Walling, C. A., Kruuk, L. E. B & Nussey, D. H. (2010). An ecologist???s guide to the animal model. Journal of Animal Ecology, 79(1), 13-26.
#'@references Morrissey, M. B., Wilson, A. J., Pemberton, J. M., & Ferguson, M. M. (2007). A framework for power and sensitivity analyses for quantitative genetic studies of natural populations, and case studies in Soay sheep (Ovis aries). Journal of Evolutionary Biology, 20(6), 2309-2321.
#'@seealso \code{\link{gryphon}}
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

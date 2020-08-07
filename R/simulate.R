#'@title  function 1
#'@description Who knows
#'@param n This is first
#'@param y This is second
#'@author Fonti Kar
#'@export

simulate <- function(n,y){
  t <- stats::rnorm(n,y,1)
  return(t)
}



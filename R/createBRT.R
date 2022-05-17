create.BRT <- function(data,eff.var,res.var,family = "bernoulli",tc,lr,bf){
  BRT <- dismo::gbm.step(data,gbm.x = eff.var,gbm.y = res.var,family = family,
                  tree.complexity = tc,learning.rate = lr,bag.fraction = bf)
  return(BRT)
}

#' @title A function for running BRT analysis
#' @description This function allows you run a Boosted Regression Tree analysis on your data of choice specifying the effect variables, response variable, and machine learning algorithm hyperparameters
#' @param data input data
#' @param eff.var columns or names of effect variables
#' @param res.var column or name of response variable
#' @param family type of analysis
#' @param tc tree complexity
#' @param lr learning rate
#' @param bf bag fraction
#' @keywords BRT
#' @export
#' @examples
#' create.BRT(Anguilla_train,eff.var = 3:14,res.var = "Angaus",family = "bernoulli",tc = 5,lr = 0.01,bf = 0.5)

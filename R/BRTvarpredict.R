BRT.var.predict <- function(BRT,var.name,var.value){
  test.data <- as.data.frame(matrix(ncol = length(BRT$var.names)))
  names(test.data) <- BRT$var.names
  for(i in 1:length(var.name)){test.data[[var.name[i]]] <- var.value[i]}
  gbm::predict.gbm(BRT,test.data)
}

#' @title A function for predicting the response variable
#' @description This function allows you predict the value of a response variable based on inputs of new effect variable data, following the BRT model produced by create.BRT
#' @param BRT input BRT model of type gbm object
#' @param var.name name or vector of names for effect variables of interest
#' @param var.value value or vector of values for effect variables of interest
#' @keywords BRT
#' @export
#' @examples
#' BRT.var.predict(BRT.model,var.name = c("SegSumT","SegTSeas","USAvgT","LocSed"),var.value = c(20,-1.5,1.2,3.5))

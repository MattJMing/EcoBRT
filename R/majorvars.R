major.vars <- function(BRT,levels = NULL){
  rownames(BRT$contributions) <- NULL
  if(is.null(levels)){df <- BRT$contributions}
  else if(levels > nrow(BRT$contributions)){df <- BRT$contributions}
  else{df <- BRT$contributions[1:levels,]}
  p <- ggplot2::ggplot(data = df,ggplot2::aes(y = reorder(var, +rel.inf),x = rel.inf)) +
    ggplot2::geom_bar(stat = "identity") +
    ggplot2::labs(y = "Variable Name",x = "Relative Contribution")
  print(p)
  return(df)
}

#' @title A function for viewing most influential variables
#' @description This function allows you visualize and identify the variables with the largest impact on response variable variance, as well as each variable's relative impact
#' @param BRT input BRT model of type gbm object
#' @param levels integer number of important variables
#' @keywords BRT
#' @export
#' @examples
#' major.vars(BRT.model,levels = 3)

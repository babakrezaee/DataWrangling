
# DF=DataFrame
# Vec=Vector
# K= number of points in the neighborhood

EucDis_fun<-function(DF,vec){
  
  Euc_di=rep(0,nrow(DF))
  
  for (i in 1:length(X_f)){
    Euc_di=Euc_di+(DF[,i]-vec[i])^2
  }
  return(Euc_di^.5)
}


KpointsMat_fun <- function(DF, vec, k){
  
  Euc_di=EucDis_fun(DF,vec)
  
  return(X[order(Euc_di),][1:k,])
}

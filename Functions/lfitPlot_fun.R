##################################################
## simple lift function.
#plots lift function
liftf = function(yl,phatl,dopl=TRUE,...) {
  if(is.factor(yl)) yl = as.numeric(yl)-1
  oo = order(-phatl)
  sy = cumsum(yl[oo])/sum(yl==1)
  if(dopl) {
    par(mai=c(.8,1.2,.5,.5))
    ii = (1:length(sy))/length(sy)
    plot(ii,sy,type="l",lwd=2,col="blue",xlab="% tried",ylab="% of successes",...)
    abline(0,1,lty=2)
  }
  return(sy)
}
##################################################
##deviance loss function
loss = function(y,phat,wht=0.0000001) {
  #y should be 0/1
  #wht shrinks probs in phat towards .5, don't log 0!
  if(is.factor(y)) y = as.numeric(y)-1
  phat = (1-wht)*phat + wht*.5
  py = ifelse(y==1,phat,1-phat)
  return(-2*sum(log(py)))
}
##################################################
## plots one lift curve
lift.plot = function(phat, y.list,...) {
  if(is.factor(y.list)) y.list = as.numeric(y.list)-1
  oo = order(-phat)
  sy = cumsum(y.list[oo])/sum(y.list==1)
  
  ii = (1:length(sy))/length(sy)
  plot(ii, sy, 
       type='l', lwd=2, col='blue', 
       xlab='% tried',ylab='% of successes',...)
  abline(0, 1, lty=2)
}
##################################################
## plots multiple lift curves
## phat.list is a list 
## each element of the list is a vector phat for different model
lift.many.plot = function(phat.list, y.list,...) {
  if(is.factor(y.list)) y.list = as.numeric(y.list)-1
  n = length(y.list)
  
  par(mai=c(.8, 1.2, .5, .5))
  plot(c(0,1), c(0,1), type="n", xlab='% tried', ylab='% of successes', ...)
  abline(0, 1, lty=2)
  ii = (1:n) / n
  for(i in 1:length(phat.list)) {
    oo = order(-phat.list[[i]])
    sy = cumsum(y.list[oo])/sum(y.list==1)
    lines(ii,sy,type="l",lwd=2,col=i)
  }
}
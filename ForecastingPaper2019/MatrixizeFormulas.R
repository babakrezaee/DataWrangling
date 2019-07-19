

#Preparing the matrix version of below formulas.
## Version: 07192019


#fma_Violent1=as.formula(as.factor(Violent1) ~ Population+RealGDPPC+Inflation+Democracy+Ethnic_ELF+Religious_ELF+theta_mean)

#fma_Violent1proc=as.formula(as.factor(Violent1) ~ Population+RealGDPPC+Inflation+Democracy+Ethnic_ELF+Religious_ELF+theta_mean+
#  PublicStatement+Appeal+Intent2Cooperate+Consult+DiplomaticCooperation+MaterialCooperatio+ProvideAid+
#    Yield+Invistigate+Demand+Disapprove+Reject+Threaten+Protest+Military+ReduceRelation+Coerce+Assult+Fight+
#  UnconMassViol)

#fma_Violent1D=as.formula(as.factor(Violent1) ~ Conflict+Population+RealGDPPC+Inflation+Democracy+Ethnic_ELF+Religious_ELF+theta_mean)


#fma_Conflict1=as.formula(as.factor(Conflict1) ~ Population+RealGDPPC+Inflation+Democracy+Ethnic_ELF+Religious_ELF+theta_mean)

#fma_Conflict1proc=as.formula(as.factor(Conflict1)~Population+RealGDPPC+Inflation+Democracy+Ethnic_ELF+Religious_ELF+theta_mean+
#  PublicStatement+Appeal+Intent2Cooperate+Consult+DiplomaticCooperation+MaterialCooperatio+ProvideAid+
#  Yield+Invistigate+Demand+Disapprove+Reject+Threaten+Protest+Military+ReduceRelation+Coerce+Assult+Fight+
#  UnconMassViol)

#fma_Conflict1D=as.formula(as.factor(Conflict1) ~ Conflict+Population+RealGDPPC+Inflation+Democracy+Ethnic_ELF+Religious_ELF+theta_mean+CCode)


xy_Violent1=cd[,c("Violent1","Population","RealGDPPC","Inflation","Democracy","Ethnic_ELF","Religious_ELF","theta_mean")]

x_Violent1=model.matrix(Violent1~.,xy_Violent1)[,-1]
y_violent1=as.factor(cd$Violent1)

cd_violent1=data.frame(y_violent1,x_Violent1)

#

xy_Violent1proc=cd[,c("Violent1","Population","RealGDPPC","Inflation","Democracy","Ethnic_ELF","Religious_ELF","theta_mean",
                      "PublicStatement","Appeal","Intent2Cooperate","Consult","DiplomaticCooperation","MaterialCooperatio","ProvideAid",
                      "Yield","Invistigate","Demand","Disapprove","Reject","Threaten","Protest","Military","ReduceRelation","Coerce",
                      "Assult","Fight", "UnconMassViol")]

x_Violent1proc=model.matrix(Violent1~.,xy_Violent1proc)[,-1]
y_violent1proc=as.factor(cd$Violent1)


#

#fma_Violent1D=as.formula(as.factor(Violent1) ~ Conflict+Population+RealGDPPC+Inflation+Democracy+Ethnic_ELF+Religious_ELF+theta_mean)
xy_Violent1D=cd[,c("Violent1","Conflict","Population","RealGDPPC","Inflation","Democracy","Ethnic_ELF","Religious_ELF","theta_mean")]

x_Violent1D=model.matrix(Violent1~.,xy_Violent1)[,-1]
y_violent1D=as.factor(cd$Violent1)

#

xy_Conflict1=cd[,c("Conflict1","Population","RealGDPPC","Inflation","Democracy","Ethnic_ELF","Religious_ELF","theta_mean")]

x_Conflict1=model.matrix(Conflict1~.,xy_Conflict1)[,-1]
y_Conflict1=as.factor(cd$Conflict1)

#

xy_Conflict1proc=cd[,c("Conflict1","Population","RealGDPPC","Inflation","Democracy","Ethnic_ELF","Religious_ELF","theta_mean",
                       "PublicStatement","Appeal","Intent2Cooperate","Consult","DiplomaticCooperation","MaterialCooperatio","ProvideAid",
                       "Yield","Invistigate","Demand","Disapprove","Reject","Threaten","Protest","Military","ReduceRelation","Coerce",
                       "Assult","Fight", "UnconMassViol")]

x_Conflict1proc=model.matrix(Conflict1~.,xy_Conflict1proc)[,-1]
y_Conflict1proc=as.factor(cd$Conflict1)

#

xy_Conflict1D=cd[,c("Conflict1","Conflict","Population","RealGDPPC","Inflation","Democracy","Ethnic_ELF","Religious_ELF","theta_mean")]

x_Conflict1D=model.matrix(Conflict1~.,xy_Conflict1D)[,-1]
y_Conflict1D=as.factor(cd$Conflict1)




#Preparing the matrix version of below formulas.
## Version: 07192019

print("fma_Violent1; fma_Violent1proc; fma_Violent1D; fma_Conflict1; fma_Conflict1proc; fma_Conflict1D")
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
Violent1=as.factor(cd$Violent1)

cd_Violent1=data.frame(Violent1,x_Violent1)

#

xy_Violent1proc=cd[,c("Violent1","Population","RealGDPPC","Inflation","Democracy","Ethnic_ELF","Religious_ELF","theta_mean",
                      "PublicStatement","Appeal","Intent2Cooperate","Consult","DiplomaticCooperation","MaterialCooperatio","ProvideAid",
                      "Yield","Invistigate","Demand","Disapprove","Reject","Threaten","Protest","Military","ReduceRelation","Coerce",
                      "Assult","Fight", "UnconMassViol")]

x_Violent1proc=model.matrix(Violent1~.,xy_Violent1proc)[,-1]

cd_violent1proc=data.frame(Violent1,x_Violent1proc)
#

#fma_Violent1D=as.formula(as.factor(Violent1) ~ Conflict+Population+RealGDPPC+Inflation+Democracy+Ethnic_ELF+Religious_ELF+theta_mean)
xy_Violent1D=cd[,c("Violent1","Conflict","Population","RealGDPPC","Inflation","Democracy","Ethnic_ELF","Religious_ELF","theta_mean")]

x_Violent1D=model.matrix(Violent1~.,xy_Violent1)[,-1]

cd_violent1D=data.frame(Violent1,x_Violent1D)

#

xy_Conflict1=cd[,c("Conflict1","Population","RealGDPPC","Inflation","Democracy","Ethnic_ELF","Religious_ELF","theta_mean")]

x_Conflict1=model.matrix(Conflict1~.,xy_Conflict1)[,-1]
Conflict1=as.factor(cd$Conflict1)

cd_Conflict1=data.frame(Conflict1,x_Conflict1)

#

xy_Conflict1proc=cd[,c("Conflict1","Population","RealGDPPC","Inflation","Democracy","Ethnic_ELF","Religious_ELF","theta_mean",
                       "PublicStatement","Appeal","Intent2Cooperate","Consult","DiplomaticCooperation","MaterialCooperatio","ProvideAid",
                       "Yield","Invistigate","Demand","Disapprove","Reject","Threaten","Protest","Military","ReduceRelation","Coerce",
                       "Assult","Fight", "UnconMassViol")]

x_Conflict1proc=model.matrix(Conflict1~.,xy_Conflict1proc)[,-1]


cd_Conflict1proc=data.frame(Conflict1,x_Conflict1proc)
#

xy_Conflict1D=cd[,c("Conflict1","Conflict","Population","RealGDPPC","Inflation","Democracy","Ethnic_ELF","Religious_ELF","theta_mean")]

x_Conflict1D=model.matrix(Conflict1~.,xy_Conflict1D)[,-1]


cd_Conflict1D=data.frame(Conflict1,x_Conflict1D)

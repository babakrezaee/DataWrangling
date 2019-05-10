
## Fix some data-entry problems in the data and labels variables

ReLabel_NAVCO2<-function(sample){
  
  table(sample$BYear)
  sample$BYear[sample$BYear == 2] <- 1
  table(sample$BYear)
  
  sample$Status <- factor(sample$Status,
                          levels = c(0,1),
                          labels = c("Ended", "Ongoing"))
  
  sample$BYear <- factor(sample$BYear,
                         levels = c(0,1),
                         labels = c("No", "Yes"))
  
  sample$PrimMethod <-factor(sample$PrimMethod,
                             levels=c(0,1),
                             labels=c("Violent","Nonviolent"))
  
  sample$Unity <-factor(sample$Unity,
                        levels=c(0,1,2,3,-99),
                        labels=c("United","Moderate disunity", "Competition", "Violent Competition","Unknown"))
  
  sample$RadFlank <-factor(sample$RadFlank,
                           levels=c(0,1,2,-99),
                           labels=c("Violent","No violent flank", "Violent flank", "Unknown"))
  
  #sample$RadFlankIntensity <-factor(sample$RadFlankIntensity,
  #                               levels=c(0,1,2,3,-99),
  #                               labels=c("No violent flank", "Property damage", "Non-lethal violence","Lethal violence","Unknown"))
  
  #sample$RadFlankResponse <-factor(sample$RadFlankResponse,
  #                              levels=c(0,1,2,3,-99),
  #                             labels=c("No violent flank", "Commited to nonviolence","Toleration of violence","Internal disagreement", "Unknown"))
  
  sample$Goals <-factor(sample$Goals,
                        levels=c(0,1,2,3,4,5,-99),
                        labels=c("Regime change","Institutional refomr","Policy change","Territorial secession",
                                 "Autonomy","Anti-occupation","Unknown"))
  
  sample$GolasChange <- factor(sample$GolasChange,
                               levels = c(0,1,-99),
                               labels = c("No change", "Shift", "Unknown"))
  
  
  
  sample$Structure <- factor(sample$Structure,
                             levels = c(0,1,-99),
                             labels = c("Consensus-based", "Hierarchical", "Unknown"))
  
  
  sample$MediaOutreach <- factor(sample$MediaOutreach,
                                 levels = c(0,1,-99),
                                 labels = c("No", "Yes", "Unknown"))
  
  sample$Repression <- factor(sample$Repression,
                              levels = c(0,1,2,3,-99),
                              labels = c("Non","Mild","Moderate","Extreme","Unknown"))
  
  sample$RepressionDiscr <- factor(sample$RepressionDiscr,
                                   levels = c(0,1,-99),
                                   labels = c("Discriminate", "Indiscriminate", "Unknown"))
  
  sample$Backlash <- factor(sample$Backlash,
                            levels = c(0,1,2,3,-99),
                            labels = c("No","Movement suppressed","Decreased mobilization","Increased mobilization", "Unknown"))
  
  
  sample$SecDefection <- factor(sample$SecDefection,
                                levels = c(0,1,-99),
                                labels = c("Yes", "No", "Unknown"))
  
  
  sample$StateDefection <- factor(sample$StateDefection,
                                  levels = c(0,1,-99),
                                  labels = c("No", "Yes", "Unknown"))
  
  
  sample$IntSanction <- factor(sample$IntSanction,
                               levels = c(0,1,-99),
                               labels = c("No", "Yes", "Unknown"))
  
  sample$IntMedia <- factor(sample$IntMedia,
                            levels = c(0,1,2,-99),
                            labels = c("Little to none","Moderate", "High", "Unknown"))
  
  sample$DomMedia <- factor(sample$DomMedia,
                            levels = c(0,1,2,-99),
                            labels = c("Little to none","Moderate", "High", "Unknown"))
  
  
  sample$Progress <- factor(sample$Progress,
                            levels = c(0,1,2,3,4,5,-99),
                            labels = c("Status quo","Visible gains","Limited concession", "Significant concession",
                                       "Complete success","Ends in failure","Unknown"))
  
  }


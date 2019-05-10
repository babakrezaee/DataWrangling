
## Fix some data-entry problems in the data and labels variables

ReLabel_NAVCO2<-function(data){
  
  table(data$BYear)
  sample$BYear[data$BYear == 2] <- 1
  table(data$BYear)
  
  data$Status <- factor(data$Status,
                          levels = c(0,1),
                          labels = c("Ended", "Ongoing"))
  
  data$BYear <- factor(data$BYear,
                         levels = c(0,1),
                         labels = c("No", "Yes"))
  
  data$PrimMethod <-factor(data$PrimMethod,
                             levels=c(0,1),
                             labels=c("Violent","Nonviolent"))
  
  data$Unity <-factor(data$Unity,
                        levels=c(0,1,2,3,-99),
                        labels=c("United","Moderate disunity", "Competition", "Violent Competition","Unknown"))
  
  data$RadFlank <-factor(data$RadFlank,
                           levels=c(0,1,2,-99),
                           labels=c("Violent","No violent flank", "Violent flank", "Unknown"))
  
  #sample$RadFlankIntensity <-factor(sample$RadFlankIntensity,
  #                               levels=c(0,1,2,3,-99),
  #                               labels=c("No violent flank", "Property damage", "Non-lethal violence","Lethal violence","Unknown"))
  
  #sample$RadFlankResponse <-factor(sample$RadFlankResponse,
  #                              levels=c(0,1,2,3,-99),
  #                             labels=c("No violent flank", "Commited to nonviolence","Toleration of violence","Internal disagreement", "Unknown"))
  
  data$Goals <-factor(data$Goals,
                        levels=c(0,1,2,3,4,5,-99),
                        labels=c("Regime change","Institutional refomr","Policy change","Territorial secession",
                                 "Autonomy","Anti-occupation","Unknown"))
  
  data$GolasChange <- factor(data$GolasChange,
                               levels = c(0,1,-99),
                               labels = c("No change", "Shift", "Unknown"))
  
  
  
  data$Structure <- factor(data$Structure,
                             levels = c(0,1,-99),
                             labels = c("Consensus-based", "Hierarchical", "Unknown"))
  
  
  data$MediaOutreach <- factor(data$MediaOutreach,
                                 levels = c(0,1,-99),
                                 labels = c("No", "Yes", "Unknown"))
  
  data$Repression <- factor(data$Repression,
                              levels = c(0,1,2,3,-99),
                              labels = c("Non","Mild","Moderate","Extreme","Unknown"))
  
  data$RepressionDiscr <- factor(data$RepressionDiscr,
                                   levels = c(0,1,-99),
                                   labels = c("Discriminate", "Indiscriminate", "Unknown"))
  
  data$Backlash <- factor(data$Backlash,
                            levels = c(0,1,2,3,-99),
                            labels = c("No","Movement suppressed","Decreased mobilization","Increased mobilization", "Unknown"))
  
  
  data$SecDefection <- factor(data$SecDefection,
                                levels = c(0,1,-99),
                                labels = c("Yes", "No", "Unknown"))
  
  
  data$StateDefection <- factor(data$StateDefection,
                                  levels = c(0,1,-99),
                                  labels = c("No", "Yes", "Unknown"))
  
  
  data$IntSanction <- factor(data$IntSanction,
                               levels = c(0,1,-99),
                               labels = c("No", "Yes", "Unknown"))
  
  data$IntMedia <- factor(data$IntMedia,
                            levels = c(0,1,2,-99),
                            labels = c("Little to none","Moderate", "High", "Unknown"))
  
  data$DomMedia <- factor(data$DomMedia,
                            levels = c(0,1,2,-99),
                            labels = c("Little to none","Moderate", "High", "Unknown"))
  
  
  data$Progress <- factor(data$Progress,
                            levels = c(0,1,2,3,4,5,-99),
                            labels = c("Status quo","Visible gains","Limited concession", "Significant concession",
                                       "Complete success","Ends in failure","Unknown"))
  
  }


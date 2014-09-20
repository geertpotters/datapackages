corrdata<-read.table("./data/stoltdata.txt", header=T)
corrdata$factor <- as.factor(c(rep("non-Stolt", 
                                   times=nrow(corrdata[-grep("^Stol", corrdata$naam),])),
                           rep("Stolt", 
                               times=nrow(corrdata[grep("^Stol", corrdata$naam),]))))
stoltdata<-corrdata[grep("^Stol", corrdata$naam),]
algdata<-corrdata[-grep("^Stol", corrdata$naam),]
mAll<-lm(corrdata$corrPercent~corrdata$leeftijdJaren+0)
mCon<-lm(algdata$corrPercent~algdata$leeftijdJaren+0)
mTreat<-lm(stoltdata$corrPercent~stoltdata$leeftijdJaren+0)
r2All<-summary(mAll)$r.squared
r2Con<-summary(mCon)$r.squared
r2Treat<-summary(mTreat)$r.squared


shinyServer(
     function(input, output){
          
          datasetInput<- reactive({
               switch(input$dataset,
                      "corrdata" = corrdata$corrPercent,
                      "algdata"= algdata$corrPercent,
                      "stoltdata" = stoltdata$corrPercent)
          })
          
          output$corroplot <- renderPlot({
               plot(algdata$corrPercent~algdata$leeftijdJaren, 
                    pch=as.numeric(input$symbGeneral), 
                    col=input$colorGeneral, 
                         main="Corrosion in ballast tanks",
                    xlab="Age (years)", ylab="Percent corrosion")

               points(stoltdata$corrPercent, 
                      pch=as.numeric(input$symbTreated), 
                      col=input$colorTreated) 
               abline(mCon, col=input$colorGeneral)
               abline(mTreat, col=input$colorTreated)
               legend("topleft", legend=c("Control", "Treated"),  
                      pch=c(as.numeric(input$symbGeneral), as.numeric(input$symbTreated)),
                      col=c(input$colorGeneral, input$colorTreated))
               })
          
          output$text1 <- renderText({ 
               paste("R-squared for ", 
                     switch(input$dataset,
                            "corrdata" = "all",
                            "algdata"= "the control",
                            "stoltdata" = "the treated"),
                     " data is ", 
                     switch(input$dataset,
                            "corrdata" = round(r2All, 3),
                            "algdata"= round(r2Con,3),
                            "stoltdata" = round(r2Treat,3)), 
                     ".", sep=""
                     )
          })

          output$text2 <- renderText({ paste("Summary of ",  
               switch(input$dataset,
                      "corrdata" = "all",
                      "algdata"= "control",
                      "stoltdata" = "treated"),
               " data", sep="")
          })
  
          
          output$summary <- renderPrint({
               dataset<-datasetInput()
               summary(dataset)
          })
          
     }
     )


